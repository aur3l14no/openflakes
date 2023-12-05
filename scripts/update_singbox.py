#!/usr/bin/env python

import json
import pathlib
import re

import requests_cache
from tenacity import retry, stop_after_attempt

from lib import l, sh, sh_, system

CACHIX_NAME = "aur3l14no"

l.basicConfig(level=l.INFO)

commit_message = "Update:"

s = requests_cache.CachedSession("requests_cache", expire_after=360)


@retry(stop=stop_after_attempt(5))
def fetch_gh_release_ver(pkg):
    """Git latest version of releases using GitHub API.
    If a package endswith `-prerelease`, then we treat it as one!
    """
    # TODO find <owner>/<repo>
    owner = "SagerNet"
    repo = "sing-box"
    j = s.get(f"https://api.github.com/repos/{owner}/{repo}/releases").json()
    try:
        # find latest
        releases = [r for r in j if r["prerelease"] == pkg.endswith("-prerelease")]
        ver = releases[0]["tag_name"]
        # TODO should `^v` be handled this way?
        ver = re.sub("^v", "", ver)
        return ver
    except Exception:
        raise Exception(f"Failed to decode {j[0]}")


def update_github_info(pkg):
    """Update github info in `default.nix` while also generating commit message.
    Return True if updated.
    """
    global commit_message
    l.info(f"Updating github info for {pkg}")
    ver = fetch_gh_release_ver(pkg)
    l.info(f"Latest ver: {ver}")
    path = pathlib.Path(f"./pkgs/{pkg}/default.nix")
    content = path.read_text()
    old_ver = re.search(r'version = "(.*)";', content).group(1)
    if old_ver != ver:
        content = re.sub(r'version = ".*";', f'version = "{ver}";', content)
        path.write_text(content)
        commit_message += f" {pkg}: {old_ver} -> {ver}"
        return True
    else:
        return False


def build(pkg):
    """Build #.pkg. Update hash on failure."""
    l.info(f"Building {pkg}")
    # replace hashes with dummies (only sha-256)
    dummy = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="

    path = pathlib.Path(f"./pkgs/{pkg}/default.nix")
    content = path.read_text()
    path.write_text(re.sub(r'sha256-[^"]*', dummy, content))

    max_attempts = 3
    for n_attempts in range(0, max_attempts):
        p = sh_(f"nix build .#{pkg} --json")
        if p.returncode != 0:
            try:
                # mismatch error
                specified = re.search("specified:\s*(.+)$", p.stderr, re.M).group(1)
                got = re.search("got:\s*(.+)$", p.stderr, re.M).group(1)
                content = path.read_text()
                content = content.replace(specified, got, 1)
                path.write_text(content)
                l.info(f"Replaced hash: {specified} -> {got}")
            except Exception:
                # unknown error
                l.error(f"Non-mismatch errors: {p.stderr}")
        else:
            l.info(f"Build success: {p.stdout}")
            return p.stdout


def cachix_push(paths):
    for path in paths:
        out = sh(f"echo {path} | cachix push {CACHIX_NAME}")
        l.info(out)
    return len(paths)


def build_and_push(pkg):
    out = build(pkg)
    j = json.loads(out)
    paths = [v for o in j for v in o["outputs"].values()] + [o["drvPath"] for o in j]
    return cachix_push(paths)


def commit():
    global commit_message
    if (sh("git status -s").strip()) != "":
        l.info(sh("git add -A"))
        l.info(sh(f'git commit -m "{commit_message}"'))


def main():
    for pkg in ("sing-box", "sing-box-prerelease"):
        if update_github_info(pkg) or True:
            build_and_push(pkg)
    commit()


l.info(system)

if __name__ == "__main__":
    main()

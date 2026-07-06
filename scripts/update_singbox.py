#!/usr/bin/env python
import argparse
import os
import pathlib
import re
import shutil
import subprocess as sp

import httpx

N_RELEASES = 3
N_PRERELEASES = 5


parser = argparse.ArgumentParser()
parser.add_argument(
    "--refresh-existing",
    action="store_true",
    help="Refresh hashes for retained sing-box versions that already exist.",
)
parser.add_argument(
    "--no-commit",
    action="store_true",
    help="Leave changes in the working tree instead of committing them.",
)
args = parser.parse_args()

# releases
headers = {}
if token := os.environ.get("GITHUB_TOKEN"):
    headers["Authorization"] = f"Bearer {token}"

response = httpx.get(
    "https://api.github.com/repos/SagerNet/sing-box/releases",
    params={"per_page": 100},
    headers=headers,
    timeout=60,
)
response.raise_for_status()
releases = response.json()

prereleases = [r for r in releases if r["prerelease"]]
releases = [r for r in releases if not r["prerelease"]]
prerelease_versions = [r["tag_name"][1:] for r in prereleases][:N_PRERELEASES]
release_versions = [r["tag_name"][1:] for r in releases][:N_RELEASES]
release_version = release_versions[0]
prerelease_version = prerelease_versions[0] if prerelease_versions else None

versions = list(dict.fromkeys(release_versions + prerelease_versions))
minor_versions = list(
    dict.fromkeys([re.match(r"^(\d+\.\d+)\..+", v).group(1) for v in versions])
)

# folder
root = pathlib.Path("pkgs/sing-box")
dirs = [d.name for d in root.glob("*") if d.is_dir()]

new_versions = [v for v in versions if v not in dirs]
alias_names = set(minor_versions) | ({"pre"} if prerelease_version else set())
stale_dirs = [d for d in dirs if d not in versions and d not in alias_names]

commit_message = f"New sing-box versions: {', '.join(new_versions)}"


def attr_name(version):
    return f"sing-box-{version.replace('.', '_')}"


def nix_update(attribute, version, filename, *, refresh=False):
    requested_version = "skip" if refresh else version
    return sp.run(
        [
            "nix-update",
            "--flake",
            "--version",
            requested_version,
            "--override-filename",
            str(filename),
            attribute,
        ],
        check=True,
    )


def create_version(name, version):
    """Create a brand-new full-version directory seeded from default.nix.

    The root default.nix imports `./package.nix`; rewrite that path so the
    import resolves to the sibling `../package.nix` from inside the new
    subdirectory.
    """
    (root / name).mkdir()
    content = (root / "default.nix").read_text().replace(
        "import ./package.nix", "import ../package.nix"
    )
    (root / name / "default.nix").write_text(content)
    sp.run(["git", "add", "-A"])
    nix_update(
        attr_name(name),
        version,
        root / name / "default.nix",
    )


def sync_alias(alias, target):
    """Point alias at target version; no-op if content already matches."""
    target_file = root / target / "default.nix"
    alias_file = root / alias / "default.nix"
    if alias_file.exists() and alias_file.read_text() == target_file.read_text():
        return
    (root / alias).mkdir(exist_ok=True)
    shutil.copy(target_file, alias_file)


nix_update("sing-box", release_version, root / "default.nix")

for d in stale_dirs:
    shutil.rmtree(root / d)

if prerelease_version is None and (root / "pre").exists():
    shutil.rmtree(root / "pre")

for version in new_versions:
    create_version(version, version)

refreshed_versions = []
if args.refresh_existing:
    nix_update("sing-box", release_version, root / "default.nix", refresh=True)

    existing_versions = [v for v in versions if v not in new_versions]
    for version in existing_versions:
        nix_update(
            attr_name(version),
            version,
            root / version / "default.nix",
            refresh=True,
        )
        refreshed_versions.append(version)

for minor in minor_versions:
    for version in versions:
        if version.startswith(minor + "."):
            sync_alias(minor, version)
            break

if prerelease_version is not None:
    sync_alias("pre", prerelease_version)

messages = []
if new_versions:
    messages.append(commit_message)
if refreshed_versions:
    messages.append(f"Refresh sing-box versions: {', '.join(refreshed_versions)}")
if not messages:
    messages.append("No sing-box version changes")

if not args.no_commit:
    sp.run(["git", "add", "-A"])
    if sp.run(["git", "diff", "--cached", "--quiet"], check=False).returncode != 0:
        sp.run(["git", "commit", "-m", "; ".join(messages)], check=True)

print("; ".join(messages))

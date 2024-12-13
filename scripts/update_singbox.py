#!/usr/bin/env python
import pathlib
import re
import shutil
import subprocess as sp

import httpx

N_RELEASES = 3
N_PRERELEASES = 5

# releases
releases = httpx.get(
    "https://api.github.com/repos/SagerNet/sing-box/releases",
    params={
        "per_page": 100,
    },
).json()
prereleases = [r for r in releases if r["prerelease"]]
releases = [r for r in releases if not r["prerelease"]]
prerelease_versions = [r["tag_name"][1:] for r in prereleases][:N_PRERELEASES]
release_versions = [r["tag_name"][1:] for r in releases][:N_RELEASES]
prerelease_version = prerelease_versions[0]
release_version = release_versions[0]

versions = list(dict.fromkeys(release_versions + prerelease_versions))
minor_versions = list(
    dict.fromkeys([re.match(r"^(\d+\.\d+)\..+", v).group(1) for v in versions])
)

# folder
root = pathlib.Path("pkgs/sing-box")
dirs = [d.name for d in root.glob("*") if d.is_dir()]

new_versions = [v for v in versions if v not in dirs]
old_versions = [d for d in dirs if d not in versions]

commit_message = f"New sing-box versions: {', '.join(new_versions)}"


def nix_update(attribute, version):
    return sp.run(["nix-update", "--flake", "--version", version, attribute])


def new_version(name, version, reference_name: str | None = None):
    (root / name).mkdir()
    shutil.copy(
        root / reference_name / "default.nix"
        if reference_name is not None
        else root / "default.nix",
        root / name / "default.nix",
    )
    sp.run(["git", "add", "-A"])
    nix_update(f"sing-box-{name.replace('.', '_')}", version)


nix_update("sing-box", release_version)
for version in old_versions:
    shutil.rmtree(root / version)

for version in new_versions:
    new_version(version, version)

for minor in minor_versions:
    for version in versions:
        if version.startswith(minor):
            new_version(minor, version, version)
            break

new_version("pre", prerelease_version, prerelease_version)

sp.run(["git", "add", "-A"])
sp.run(["git", "commit", "-m", commit_message])
print(commit_message)

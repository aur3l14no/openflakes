#!/usr/bin/env bash

# might fail, do best we can
set -euox pipefail

for system in x86_64-linux aarch64-linux aarch64-darwin; do
  echo "Processing $system..."

  available_paths=""
  while IFS= read -r package; do
    path=$(nix eval --raw ".#packages.$system.$package.outPath" 2>/dev/null || true)
    if [ -n "$path" ] && nix path-info "$path" >/dev/null 2>&1; then
      available_paths="${available_paths}${path}\n"
    fi
  done < <(nix flake show --json | jq -r ".packages.\"$system\"|keys[]")

  if [ -n "$available_paths" ]; then
    echo -e "$available_paths" | cachix push aur3l14no
  else
    echo "No packages available in substituters for $system"
  fi
done

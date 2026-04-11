# OpenFlakes

[![Build and cache](https://github.com/aur3l14no/openflakes/actions/workflows/build.yml/badge.svg)](https://github.com/aur3l14no/openflakes/actions/workflows/build.yml)
[![Cachix Cache](https://img.shields.io/badge/cachix-aur3l14no-blue.svg)](https://aur3l14no.cachix.org)

Open flakes.

- ⚙ "sing-box-x.y.z": sing-box releases
- "sing-box-appimage": appimage for latest stable sing-box
- "sjsonnet": Scala Jsonnet implementation CLI bundle

(⚙: automated update)

## Fetching prebuilt artifacts

Builds are pushed to [aur3l14no.cachix.org](https://aur3l14no.cachix.org) for `x86_64-linux`, `aarch64-linux`, and `aarch64-darwin`. To pull a package without building locally:

```sh
nix build \
  --builders '' \
  --max-jobs 0 \
  --option extra-substituters https://aur3l14no.cachix.org \
  --option extra-trusted-public-keys aur3l14no.cachix.org-1:jxuBM4n3aEvFMkxO1I/LqmAIExoXIkNzAj6tZAd6oC4= \
  github:aur3l14no/openflakes#packages.x86_64-linux.sing-box-appimage
```

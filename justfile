update_singbox *FLAGS:
    @python ./scripts/update_singbox.py {{FLAGS}}

cache:
    #!/usr/bin/env bash
    # might fail, do best we can
    set -euox pipefail
    for system in x86_64-linux aarch64-linux aarch64-darwin; do
        nix flake show --json \
        | jq  ".packages.\"$system\"|keys[]" \
        | xargs -I {} nix build .#packages.$system.'"{}"' --json \
        | jq -r '.[].outputs | to_entries[].value' | cachix push aur3l14no
    done

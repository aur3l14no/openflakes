update_singbox:
    @python ./scripts/update_singbox.py

cache:
    #!/usr/bin/env fish
    set -g fish_trace 1

    function push
        jq -r '.[].outputs | to_entries[].value' | cachix push aur3l14no
    end

    for system in x86_64-linux aarch64-linux aarch64-darwin
        nix flake show --json \
        | jq  ".packages.\"$system\"|keys[]" \
        | xargs -I {} nix build .#packages.$system.'"{}"' --json \
        | push

        nix build github:euank/yaml2nix#packages.$system.default --json | push
        nix build github:Mic92/sops-nix#packages.$system.default --json | push
        nix build github:Mic92/sops-nix#packages.$system.sops-install-secrets --json | push
    end


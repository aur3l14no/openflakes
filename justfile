update_singbox:
    @python ./scripts/update_singbox.py

update_other_packages:
    @nix build github:euank/yaml2nix --json | jq -r '.[].outputs | to_entries[].value' | cachix push aur3l14no

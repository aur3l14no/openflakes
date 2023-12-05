{
  description = "My open flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    yaml2ninx.url = "github:euank/yaml2nix";
    sops-nix.url = "github:Mic92/sops-nix";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    ...
  } @ inputs:
    flake-utils.lib.eachSystem ["x86_64-linux" "aarch64-linux" "aarch64-darwin"] (
      system: let
        pkgs = import nixpkgs {
          inherit system;
        };
      in {
        packages =
          (import ./pkgs/sing-box) pkgs
          // inputs.yaml2ninx.outputs.packages.${system}.yaml2nin
          // inputs.sops-nix.outputs.packages.${system}.sops-install-secrets;
        devShell = pkgs.mkShellNoCC {
          packages = with pkgs; [
            act
            fish
            just
            jq
            (python311.withPackages (ps: with ps; [requests requests-cache tenacity]))
          ];
        };
      }
    );
}

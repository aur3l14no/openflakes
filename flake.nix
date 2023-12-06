{
  description = "My open flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    yaml2nix.url = "github:euank/yaml2nix";
    sops-nix.url = "github:Mic92/sops-nix";
  };

  nixConfig = {
    extra-substituters = ["https://aur3l14no.cachix.org"];
    extra-trusted-public-keys = ["aur3l14no.cachix.org-1:jxuBM4n3aEvFMkxO1I/LqmAIExoXIkNzAj6tZAd6oC4="];
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
          // {
            yaml2nix = inputs.yaml2nix.outputs.packages.${system}.yaml2nix;
            sops-install-secrets = inputs.sops-nix.outputs.packages.${system}.sops-install-secrets;
          };
        formatter = pkgs.alejandra;
        devShell = pkgs.mkShellNoCC {
          packages = with pkgs; [
            act
            fish
            just
            jq
            (python311.withPackages (ps: with ps; [requests requests-cache tenacity typer]))
          ];
        };
      }
    );
}

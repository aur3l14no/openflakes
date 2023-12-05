{
  description = "My open flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
  } @ inputs:
    flake-utils.lib.eachSystem ["x86_64-linux" "aarch64-linux" "aarch64-darwin"] (
      system: let
        pkgs = import nixpkgs {
          inherit system;
        };
      in rec {
        packages = (import ./pkgs/sing-box) pkgs;
        checks = packages;
        devShell = pkgs.mkShell {
          packages = with pkgs; [
            act
            just
            (python311.withPackages (ps: with ps; [requests requests-cache tenacity]))
          ];
        };
      }
    );
}

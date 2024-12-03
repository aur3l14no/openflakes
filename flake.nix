{
  description = "My open flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  nixConfig = {
    extra-substituters = [ "https://aur3l14no.cachix.org" ];
    extra-trusted-public-keys = [
      "aur3l14no.cachix.org-1:jxuBM4n3aEvFMkxO1I/LqmAIExoXIkNzAj6tZAd6oC4="
    ];
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      ...
    }@inputs:
    flake-utils.lib.eachSystem
      [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ]
      (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          packages = (import ./pkgs/sing-box) pkgs // { };
          formatter = pkgs.alejandra;
          devShell = pkgs.mkShellNoCC {
            packages = with pkgs; [
              act
              fish
              just
              jq
              (python3.withPackages (
                ps: with ps; [
                  requests
                  requests-cache
                  tenacity
                  typer
                ]
              ))
            ];
          };
        }
      );
}

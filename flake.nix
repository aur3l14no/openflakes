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
          pkgs = import nixpkgs {
            inherit system;
            overlays = [
              (final: prev: {
                myLib = import ./lib final;
              })
            ];
          };
          sing-box-packages-dot = (pkgs.myLib.callPackageVariants ./pkgs/sing-box { }) // {
            sing-box = pkgs.callPackage ./pkgs/sing-box/default.nix { };
          };
          sing-box-packages-underscore = pkgs.lib.mapAttrs' (name: value: {
            name = builtins.replaceStrings [ "." ] [ "_" ] name;
            value = value;
          }) sing-box-packages-dot;
        in
        {
          packages = sing-box-packages-underscore // sing-box-packages-dot;
          formatter = pkgs.alejandra;
          devShell = pkgs.mkShellNoCC {
            packages = with pkgs; [
              act
              just
              jq
              nix-update
              (python3.withPackages (
                ps: with ps; [
                  httpx
                ]
              ))
            ];
          };
          lib = pkgs.lib;
        }
      );
}

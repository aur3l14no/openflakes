{
  description = "My open flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    bundlers = {
      url = "github:NixOS/bundlers";
      inputs.nixpkgs.follows = "nixpkgs";
    };
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
      bundlers,
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
          sing-box-packages = (pkgs.myLib.callPackageVariants ./pkgs/sing-box { }) // {
            sing-box = pkgs.callPackage ./pkgs/sing-box/default.nix { };
          };
          # intentionally left here for nix-update to work
          sing-box-packages-underscore = pkgs.lib.mapAttrs' (name: value: {
            name = builtins.replaceStrings [ "." ] [ "_" ] name;
            value = value;
          }) sing-box-packages;
          sjsonnet = pkgs.callPackage ./pkgs/sjsonnet { };
          sing-box-appimage = bundlers.bundlers.${system}.toAppImage sing-box-packages.sing-box;
        in
        {
          packages =
            sing-box-packages-underscore
            // sing-box-packages
            // {
              inherit sjsonnet;
            }
            // pkgs.lib.optionalAttrs pkgs.stdenv.isLinux {
              inherit sing-box-appimage;
            };
          formatter = pkgs.nixfmt-rfc-style;
          devShell = pkgs.mkShellNoCC {
            packages = with pkgs; [
              act
              jq
              nix-update
              (python3.withPackages (ps: with ps; [ httpx ]))
            ];
          };
        }
      );
}

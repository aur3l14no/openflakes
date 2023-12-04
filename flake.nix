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
  } @ inputs: let
    packages = import ./pkgs;
  in
    flake-utils.lib.eachSystem ["x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin"] (
      system: let
        pkgs = import nixpkgs {
          inherit system;
        };
      in {
        packages = packages.packages pkgs;
        devShell = pkgs.mkShell {
          packages = with pkgs; [
            act
            just
            (python311.withPackages (ps: with ps; [requests requests-cache tenacity]))
          ];
        };
      }
    )
    // {
      overlays.default = import ./overlays;
    };
}

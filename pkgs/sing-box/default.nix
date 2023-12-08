# Generated by `update_singbox.py`
pkgs: {
  "sing-box-prerelease" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-alpha.16";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-alpha.16";
            hash = "sha256-GpvB+lRAVINAr1Bu2juGUDVJhAQgIkgHHk8dk7EKPqc=";
          };
          vendorHash = "sha256-CSA9zMLkUIAC76BM18t03KgYsjG8QCKMY7Z0Wb9r/x0=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-alpha.16"];
        });
  };

  "sing-box-release" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.7.2";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.7.2";
            hash = "sha256-SaWSmc498eLkWddnsHFpR6BPSbX/VHAlq+X4B7JG3Rk=";
          };
          vendorHash = "sha256-Frbv2KD5hJ5HHUdY9mm0aZ9NA5TN1D0am+FhpJZTvr4=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.7.2"];
        });
  };

  "sing-box-1_7_2" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.7.2";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.7.2";
            hash = "sha256-SaWSmc498eLkWddnsHFpR6BPSbX/VHAlq+X4B7JG3Rk=";
          };
          vendorHash = "sha256-Frbv2KD5hJ5HHUdY9mm0aZ9NA5TN1D0am+FhpJZTvr4=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.7.2"];
        });
  };

  "sing-box-1_7_1" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.7.1";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.7.1";
            hash = "sha256-5n5AnuJQvw/26X3UWdLvegFhwYzjtS7o0d4cN3c3bfQ=";
          };
          vendorHash = "sha256-UvLZY4vMS6dI6z9kPcSzbB/cW/7rfbrlhcWh51q5sak=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.7.1"];
        });
  };

  "sing-box-1_7_0" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.7.0";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.7.0";
            hash = "sha256-XD4xWOQumqbXMBbzHgCIgFIegUqJnFZsAvk1VZXX5rc=";
          };
          vendorHash = "sha256-U70FjJ0HO5dyFj50qpyjy+k2r7IR/6gOLDi2LM3M3No=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.7.0"];
        });
  };

  "sing-box-1_8_0-alpha_16" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-alpha.16";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-alpha.16";
            hash = "sha256-GpvB+lRAVINAr1Bu2juGUDVJhAQgIkgHHk8dk7EKPqc=";
          };
          vendorHash = "sha256-CSA9zMLkUIAC76BM18t03KgYsjG8QCKMY7Z0Wb9r/x0=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-alpha.16"];
        });
  };

  "sing-box-1_8_0-alpha_15" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-alpha.15";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-alpha.15";
            hash = "sha256-blYfdZWjxKHjoQIVCTHpvI3H5wFebARhdpdSCZo18/I=";
          };
          vendorHash = "sha256-b9Y/Cj3FT0l2pXJjS+NwTaFWeoyO0kaondNcAcETRwk=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-alpha.15"];
        });
  };

  "sing-box-1_8_0-alpha_13" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-alpha.13";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-alpha.13";
            hash = "sha256-RzK3bGekdU7uczBXi7KLcNw7iRgz/vTsLWCwEM2XEAM=";
          };
          vendorHash = "sha256-lDmUWTpsOhmw77iw9FpMAYIMx278BjyGi/woG3E9veM=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-alpha.13"];
        });
  };

  "sing-box-1_8_0-alpha_12" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-alpha.12";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-alpha.12";
            hash = "sha256-emipcptdM1xCEDWlc0rIM3IlahMZDadPVVa1Rr3nAO0=";
          };
          vendorHash = "sha256-9HRjZLWa89o8Q6YVs4g1NcgqUgskQhBvPv0CLj0eJZY=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-alpha.12"];
        });
  };

  "sing-box-1_8_0-alpha_11" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-alpha.11";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-alpha.11";
            hash = "sha256-6MKKr7T79Z8xiQjFjXbeZ58ePx+o2yuFLF7wGIG+ZWI=";
          };
          vendorHash = "sha256-6CUzGep5f59gBhyd5opa3IIQFu/9kgRI1lKw6HNF6fw=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-alpha.11"];
        });
  };
}

# Generated by `update_singbox.py`
pkgs: {
  "sing-box-prerelease" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-alpha.28";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-alpha.28";
            hash = "sha256-YevGiBNb5v4yjAbX+0pN6Jl+IbhYh56irX7F8OoodU0=";
          };
          vendorHash = "sha256-DBdIOQFF0IvzFORJxuUkRrhDwaeFhh00IJZJe6JG7cQ=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-alpha.28"];
        });
  };

  "sing-box-release" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.3";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.3";
            hash = "sha256-5T3Z5tayiKLeyP92Sgmxe3+QQW1QFIw3f+SF9qlr6bI=";
          };
          vendorHash = "sha256-UVFswS51OlYf01UJT7kqeCvmh3kGsiKet7tH/2AOkjc=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.3"];
        });
  };

  "sing-box-1_9_3" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.3";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.3";
            hash = "sha256-5T3Z5tayiKLeyP92Sgmxe3+QQW1QFIw3f+SF9qlr6bI=";
          };
          vendorHash = "sha256-UVFswS51OlYf01UJT7kqeCvmh3kGsiKet7tH/2AOkjc=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.3"];
        });
  };

  "sing-box-1_9_2" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.2";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.2";
            hash = "sha256-pcmY/AU/P0ebGbcJVhp8Moj4y3B2AbyZD56Fw2ZSpt4=";
          };
          vendorHash = "sha256-gmh+0NYOXcBsD+aamCTuOlgvYqmtfDnar2iGWRcepPE=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.2"];
        });
  };

  "sing-box-1_9_1" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.1";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.1";
            hash = "sha256-5TSsOlQjsw9UAscWstLsX/6MyexdRHRXu4K/EFPnyvQ=";
          };
          vendorHash = "sha256-gmh+0NYOXcBsD+aamCTuOlgvYqmtfDnar2iGWRcepPE=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.1"];
        });
  };

  "sing-box-1_10_0-alpha_28" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-alpha.28";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-alpha.28";
            hash = "sha256-YevGiBNb5v4yjAbX+0pN6Jl+IbhYh56irX7F8OoodU0=";
          };
          vendorHash = "sha256-DBdIOQFF0IvzFORJxuUkRrhDwaeFhh00IJZJe6JG7cQ=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-alpha.28"];
        });
  };

  "sing-box-1_10_0-alpha_27" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-alpha.27";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-alpha.27";
            hash = "sha256-7cPX8VBSczvVkr7zcdYjIPOK5v/UhVAHIj2k8tA4Y7Y=";
          };
          vendorHash = "sha256-fpGzEdPZaaT6aczQ0eQ9mqyLvTbs5pa/jdBaOG97DqY=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-alpha.27"];
        });
  };

  "sing-box-1_10_0-alpha_26" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-alpha.26";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-alpha.26";
            hash = "sha256-8cPyBm/zIZm2+Xp6pUEwPWuwyDiWugQ/+4IiTLJwMts=";
          };
          vendorHash = "sha256-fpGzEdPZaaT6aczQ0eQ9mqyLvTbs5pa/jdBaOG97DqY=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-alpha.26"];
        });
  };

  "sing-box-1_10_0-alpha_25" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-alpha.25";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-alpha.25";
            hash = "sha256-/DWZQOD5XSeU6F/rdiBoUsZQS2X+rAlieLJT6gxQnqs=";
          };
          vendorHash = "sha256-tkUqJ/mwTyh9f/l7ZLsWz6h0mf2mW4oEM5TZaQpDsrk=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-alpha.25"];
        });
  };

  "sing-box-1_10_0-alpha_24" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-alpha.24";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-alpha.24";
            hash = "sha256-2EFMs5TetSAxQg2jLtdzrscerk2DfFYTCwGDhBfIxmg=";
          };
          vendorHash = "sha256-egFGs1f/ECz5MA8Ig437zDsql7TqeaFP3aB5veYLjs8=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-alpha.24"];
        });
  };
}

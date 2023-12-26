# Generated by `update_singbox.py`
pkgs: {
  "sing-box-prerelease" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-rc.6";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-rc.6";
            hash = "sha256-0dmoiidX25OHvpxZOdASq/b6gGJCSRKqhDzblPLArac=";
          };
          vendorHash = "sha256-RcVyEBBCAUKb19g6gv27T88zeLJvX1mg2OivJDfvq9A=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-rc.6"];
        });
  };

  "sing-box-release" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.7.6";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.7.6";
            hash = "sha256-ZrZ2mqf1/D4L+1SlTx3rwkmk9+RcqH/yuMZie6jtpmc=";
          };
          vendorHash = "sha256-nIVm2+F+5rXTiode240zZXxIAQA4VkNynYnmdvSwEHw=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.7.6"];
        });
  };

  "sing-box-1_7_6" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.7.6";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.7.6";
            hash = "sha256-ZrZ2mqf1/D4L+1SlTx3rwkmk9+RcqH/yuMZie6jtpmc=";
          };
          vendorHash = "sha256-nIVm2+F+5rXTiode240zZXxIAQA4VkNynYnmdvSwEHw=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.7.6"];
        });
  };

  "sing-box-1_7_5" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.7.5";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.7.5";
            hash = "sha256-6SWcepENdbkwv4qq4nuxSINAxXWZmLcj5NwJ3nBnKu8=";
          };
          vendorHash = "sha256-8R3bVwziiC9n10dA8Zus7L0VyjWYKkdSszb44HqR8tE=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.7.5"];
        });
  };

  "sing-box-1_7_4" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.7.4";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.7.4";
            hash = "sha256-I1c6zc/vnAoE97wESy3ZGITto4d5dfjpGNbw4vTeElc=";
          };
          vendorHash = "sha256-wK5gwj7UnQCHtRLim3S81n0T2N8jMP74K4TWxJYVuRA=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.7.4"];
        });
  };

  "sing-box-1_8_0-rc_6" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-rc.6";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-rc.6";
            hash = "sha256-0dmoiidX25OHvpxZOdASq/b6gGJCSRKqhDzblPLArac=";
          };
          vendorHash = "sha256-RcVyEBBCAUKb19g6gv27T88zeLJvX1mg2OivJDfvq9A=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-rc.6"];
        });
  };

  "sing-box-1_8_0-rc_5" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-rc.5";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-rc.5";
            hash = "sha256-7rDpL5FELkYA/jcq09qTNDWnHJcN0P6ECGCuCFMkUXo=";
          };
          vendorHash = "sha256-RcVyEBBCAUKb19g6gv27T88zeLJvX1mg2OivJDfvq9A=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-rc.5"];
        });
  };

  "sing-box-1_8_0-rc_4" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-rc.4";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-rc.4";
            hash = "sha256-bs62aaJH9fEWAndDb5vmlZAJH9FbS+bdzzMTDfhzzkw=";
          };
          vendorHash = "sha256-UMROK/8H/PBqBEjhH35+m0Gyf6Ky6GT5DE/FL79Cohw=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-rc.4"];
        });
  };

  "sing-box-1_8_0-rc_3" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-rc.3";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-rc.3";
            hash = "sha256-9pSpNQoXC3Xr9cZDmVLsB7e0STM2ymdZsXiXzvIMnIQ=";
          };
          vendorHash = "sha256-OIExQlU3ivTlt0g3mwyy4EMy08HpI+qEE92yBZr7cUE=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-rc.3"];
        });
  };

  "sing-box-1_8_0-rc_2" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-rc.2";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-rc.2";
            hash = "sha256-THdpkTqqSkrLAP9MMa8FNNLlhlY2EDDQMa5VAzLDYjc=";
          };
          vendorHash = "sha256-OIExQlU3ivTlt0g3mwyy4EMy08HpI+qEE92yBZr7cUE=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-rc.2"];
        });
  };
}

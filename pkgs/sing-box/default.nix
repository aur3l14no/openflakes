# Generated by `update_singbox.py`
pkgs: {
  "sing-box-prerelease" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-beta.12";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-beta.12";
            hash = "sha256-mFfOS1DwhKNDN1V2IYhU3lRCAWICZ/pr02x//8aa3Uk=";
          };
          vendorHash = "sha256-rsgrcVkIMUIobuGFBlDDQM05sljZXShsa1+10xxzmlA=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-beta.12"];
        });
  };

  "sing-box-release" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.7";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.7";
            hash = "sha256-ZqcQe2d4IoF7fA2rMASFvGCuiTL+lqQqCpCt/IviClU=";
          };
          vendorHash = "sha256-/lp+3mPkGMABpvnxqpuC/7NiKrmcEWYQ80Wb7Ng1eBI=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.7"];
        });
  };

  "sing-box-1_9_7" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.7";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.7";
            hash = "sha256-ZqcQe2d4IoF7fA2rMASFvGCuiTL+lqQqCpCt/IviClU=";
          };
          vendorHash = "sha256-/lp+3mPkGMABpvnxqpuC/7NiKrmcEWYQ80Wb7Ng1eBI=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.7"];
        });
  };

  "sing-box-1_9_6" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.6";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.6";
            hash = "sha256-A9FfATNCS3UaW6YLORIApsgj0VK2jPyg+Ha2gcq6Keo=";
          };
          vendorHash = "sha256-/lp+3mPkGMABpvnxqpuC/7NiKrmcEWYQ80Wb7Ng1eBI=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.6"];
        });
  };

  "sing-box-1_9_5" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.5";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.5";
            hash = "sha256-yPIlijm5NBtBT2+bkS0sJvPb/Lwqq/ZOcl5g848BvRA=";
          };
          vendorHash = "sha256-/lp+3mPkGMABpvnxqpuC/7NiKrmcEWYQ80Wb7Ng1eBI=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.5"];
        });
  };

  "sing-box-1_10_0-beta_12" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-beta.12";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-beta.12";
            hash = "sha256-mFfOS1DwhKNDN1V2IYhU3lRCAWICZ/pr02x//8aa3Uk=";
          };
          vendorHash = "sha256-rsgrcVkIMUIobuGFBlDDQM05sljZXShsa1+10xxzmlA=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-beta.12"];
        });
  };

  "sing-box-1_10_0-beta_11" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-beta.11";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-beta.11";
            hash = "sha256-hxOQdrNQB/3KbI1ULDLPfMzFB1JmZb49iPEOtGzWajY=";
          };
          vendorHash = "sha256-rsgrcVkIMUIobuGFBlDDQM05sljZXShsa1+10xxzmlA=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-beta.11"];
        });
  };

  "sing-box-1_10_0-beta_10" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-beta.10";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-beta.10";
            hash = "sha256-J9/sI5zpWbqSUmdnIbGeaamO1uFEJpggf8zD0KELWHo=";
          };
          vendorHash = "sha256-G52zvjU3D/UdsHYtYCXle9yLvJkUuNmWXdBJVU+VCBc=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-beta.10"];
        });
  };

  "sing-box-1_10_0-beta_9" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-beta.9";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-beta.9";
            hash = "sha256-M50lfxfB87BcHN3CkfwzbxHQK1tquwTI+dYtjU7xPHQ=";
          };
          vendorHash = "sha256-G52zvjU3D/UdsHYtYCXle9yLvJkUuNmWXdBJVU+VCBc=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-beta.9"];
        });
  };

  "sing-box-1_10_0-beta_8" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-beta.8";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-beta.8";
            hash = "sha256-o+kIA4WzBwObCMocLLQD5Hs3xX2DFMvtYM86qVXiO3c=";
          };
          vendorHash = "sha256-60YOXr51oOUJik8VMyb4Jnltnm3lnGsx8UN0kWi598Q=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-beta.8"];
        });
  };
}

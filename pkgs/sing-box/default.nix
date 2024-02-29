# Generated by `update_singbox.py`
pkgs: {
  "sing-box-prerelease" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-beta.5";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-beta.5";
            hash = "sha256-GcOjryeL0TjM9bBbVM3N7xeDRbtIPBAEHW+NiwpXtu8=";
          };
          vendorHash = "sha256-RQ3OGI2DRumrlOcrXgvtnJKyRBNw2Q3AR4uz8au6e9s=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-beta.5"];
        });
  };

  "sing-box-release" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.7";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.7";
            hash = "sha256-SZd67DyDsKZZ9hKgRtbQLJzfft+vl49k9J/+Xv8ghHs=";
          };
          vendorHash = "sha256-9aH8KHn+8brGT/eJS9SWVYBMxDI1R3Q+pORfnjUI7ms=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.7"];
        });
  };

  "sing-box-1_8_7" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.7";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.7";
            hash = "sha256-SZd67DyDsKZZ9hKgRtbQLJzfft+vl49k9J/+Xv8ghHs=";
          };
          vendorHash = "sha256-9aH8KHn+8brGT/eJS9SWVYBMxDI1R3Q+pORfnjUI7ms=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.7"];
        });
  };

  "sing-box-1_8_6" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.6";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.6";
            hash = "sha256-t7P1W1iw5nCdACrByZormeq3r2KGAnZRFoXTRNjGztg=";
          };
          vendorHash = "sha256-J6+b0uZwBoxwc43+5PXFwztXC1abHvtK4ejg5vA757E=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.6"];
        });
  };

  "sing-box-1_8_5" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.5";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.5";
            hash = "sha256-fW96Hh0eBK8pKkrQP+uA2uaqnZFvZszX2d+VOxKo5Zk=";
          };
          vendorHash = "sha256-4PauMcKpjXtXHJds8MJPH9L+UYPu2fFltP2uUEXtb+o=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.5"];
        });
  };

  "sing-box-1_9_0-beta_5" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-beta.5";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-beta.5";
            hash = "sha256-GcOjryeL0TjM9bBbVM3N7xeDRbtIPBAEHW+NiwpXtu8=";
          };
          vendorHash = "sha256-RQ3OGI2DRumrlOcrXgvtnJKyRBNw2Q3AR4uz8au6e9s=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-beta.5"];
        });
  };

  "sing-box-1_9_0-beta_4" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-beta.4";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-beta.4";
            hash = "sha256-dZF/0+lp7fAKxjmBMyHslCIryOxNd5VVh8qjw+wvBQA=";
          };
          vendorHash = "sha256-hVsVCCDO9FiULnVwVPST2j3L6TnUhf/QfVlVcijtlrA=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-beta.4"];
        });
  };

  "sing-box-1_9_0-beta_1" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-beta.1";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-beta.1";
            hash = "sha256-zVag3UDcdcLxUqNI6bthvS6O8N29J1FQ4+yrOZNC74w=";
          };
          vendorHash = "sha256-Hh+f+Uxu2N0kJERkcncLFa+/ysSk4S/xZdPq5RQmdpE=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-beta.1"];
        });
  };

  "sing-box-1_9_0-alpha_15" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-alpha.15";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-alpha.15";
            hash = "sha256-U5/frrJRtblrCntSr2IsRZvDHu2/wVH99FcQ40XuWms=";
          };
          vendorHash = "sha256-DKKcycHv1ORIPBuutq/D9/y6+cjrFYcV9kXcuCNBl0s=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-alpha.15"];
        });
  };

  "sing-box-1_9_0-alpha_14" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-alpha.14";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-alpha.14";
            hash = "sha256-RPTxnSdGM4kKi+JRc4hv0zP3CaCs/nphepmYCtuS3Qs=";
          };
          vendorHash = "sha256-s42qrr63ISWS9ch52Ih5C5MAgQpj8f/JJEsHmiNsS1c=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-alpha.14"];
        });
  };
}

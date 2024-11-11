# Generated by `update_singbox.py`
pkgs: {
  "sing-box-prerelease" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.12";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.12";
            hash = "sha256-poAg4rEenQhcsfRuBvzb7Fy3GEbu9G69aYCok5YHLOs=";
          };
          vendorHash = "sha256-l2XHTmUbykpHVF8P0mDJT5svFieQRR6TqsQluObp6WA=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.12"];
        });
  };

  "sing-box-release" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.1";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.1";
            hash = "sha256-WGlYaD4u9M1hfT+L6Adc5gClIYOkFsn4c9FAympmscQ=";
          };
          vendorHash = "sha256-lyZ2Up1SSaRGvai0gGtq43MSdHfXc2PuxflSbASYZ4A=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.1"];
        });
  };

  "sing-box-1_10_1" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.1";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.1";
            hash = "sha256-WGlYaD4u9M1hfT+L6Adc5gClIYOkFsn4c9FAympmscQ=";
          };
          vendorHash = "sha256-lyZ2Up1SSaRGvai0gGtq43MSdHfXc2PuxflSbASYZ4A=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.1"];
        });
  };

  "sing-box-1_10_0" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0";
            hash = "sha256-VCx9fxtyCEwcwDCvbeOsW/oafHSSRwVrwX/aaKzgauQ=";
          };
          vendorHash = "sha256-zRGawshd+t1eN5CBSmWnyFPKPa8ClZv5k7xFG1qKeU4=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0"];
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

  "sing-box-1_11_0-alpha_12" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.12";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.12";
            hash = "sha256-poAg4rEenQhcsfRuBvzb7Fy3GEbu9G69aYCok5YHLOs=";
          };
          vendorHash = "sha256-l2XHTmUbykpHVF8P0mDJT5svFieQRR6TqsQluObp6WA=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.12"];
        });
  };

  "sing-box-1_11_0-alpha_11" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.11";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.11";
            hash = "sha256-heGKaFHkB5CZwGaZDJs4Dc+ulvY0MS3iNl+Gq5YzeUM=";
          };
          vendorHash = "sha256-R5T1S08fo8RuMxbJwNx3dKJMQRcKAPKWxlGkPl/DCQE=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.11"];
        });
  };

  "sing-box-1_11_0-alpha_10" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.10";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.10";
            hash = "sha256-eYvgtXZOy4uEN1uyAQ0dthuwHT8D+k5DQeIQDiYq3eg=";
          };
          vendorHash = "sha256-R5T1S08fo8RuMxbJwNx3dKJMQRcKAPKWxlGkPl/DCQE=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.10"];
        });
  };

  "sing-box-1_11_0-alpha_9" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.9";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.9";
            hash = "sha256-lmFqtAmDjHUcfdWaKGuv26zR6BTZj0DUH7zH7mF55Yg=";
          };
          vendorHash = "sha256-/QvixhEfeQ2ZVUuAnvJEjY9X+42ZFme/x0VLS13hJl4=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.9"];
        });
  };

  "sing-box-1_11_0-alpha_8" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.8";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.8";
            hash = "sha256-np8l00j7tU27hZKilK2QwaUyhWDxg1PvTxycguQqqjc=";
          };
          vendorHash = "sha256-/QvixhEfeQ2ZVUuAnvJEjY9X+42ZFme/x0VLS13hJl4=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.8"];
        });
  };
}

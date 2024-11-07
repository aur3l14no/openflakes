# Generated by `update_singbox.py`
pkgs: {
  "sing-box-prerelease" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.7";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.7";
            hash = "sha256-jlEsgIjkvq7bUmyNYt2Fy6RI4D/nq3+Ly05Uk7107EY=";
          };
          vendorHash = "sha256-7AymkeFriBvF58k9l4i8v6+qv3Tf61RdW6JmcTAKMOQ=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.7"];
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

  "sing-box-1_11_0-alpha_7" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.7";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.7";
            hash = "sha256-jlEsgIjkvq7bUmyNYt2Fy6RI4D/nq3+Ly05Uk7107EY=";
          };
          vendorHash = "sha256-7AymkeFriBvF58k9l4i8v6+qv3Tf61RdW6JmcTAKMOQ=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.7"];
        });
  };

  "sing-box-1_11_0-alpha_6" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.6";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.6";
            hash = "sha256-OwY4Kh4eu+uAMA+k/1tt5McBPDnKRnH5AZRox+mEEPw=";
          };
          vendorHash = "sha256-84AFzDgQ0lZ9H5l3XpysYvTlB7bDK1FGEdmafFZaOIU=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.6"];
        });
  };

  "sing-box-1_11_0-alpha_5" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.5";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.5";
            hash = "sha256-TVz6ewDOor499yLzKmd9TZVSuLyMM9CeDkZBbJBhPtQ=";
          };
          vendorHash = "sha256-nAGwgT3srdsOJozyXfYGHB26Mjfrl3uxzxisDIgoTFA=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.5"];
        });
  };

  "sing-box-1_11_0-alpha_4" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.4";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.4";
            hash = "sha256-w6dRGT48ZdtwGAAUr8HZo0e0cfaCgyzGcnOw1ZCquPw=";
          };
          vendorHash = "sha256-nAGwgT3srdsOJozyXfYGHB26Mjfrl3uxzxisDIgoTFA=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.4"];
        });
  };

  "sing-box-1_11_0-alpha_2" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.2";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.2";
            hash = "sha256-i2UerJwY//5H96GVErhX8skCGYs7bVVoEEikpmqXufg=";
          };
          vendorHash = "sha256-nAGwgT3srdsOJozyXfYGHB26Mjfrl3uxzxisDIgoTFA=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.2"];
        });
  };
}

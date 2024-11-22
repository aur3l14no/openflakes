# Generated by `update_singbox.py`
pkgs: {
  "sing-box-prerelease" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.19";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.19";
            hash = "sha256-ruM5M4EJw4CwoHRLt5wzmmlyUZzOXBOEfWQvauQvpwM=";
          };
          vendorHash = "sha256-zfFO5FkRyEYt2scVQx6ihrnqYXv1ZlWglLKiMBRdsfI=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.19"];
        });
  };

  "sing-box-release" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.2";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.2";
            hash = "sha256-coc5jIpwbX31PT4y5eb7yhspALzTOUeb4VTTq/6vOUE=";
          };
          vendorHash = "sha256-ZuYyBZHUvVMb13JkspgAS+gSA20ZKgNpF3U+m7WcRD8=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.2"];
        });
  };

  "sing-box-1_10_2" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.2";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.2";
            hash = "sha256-coc5jIpwbX31PT4y5eb7yhspALzTOUeb4VTTq/6vOUE=";
          };
          vendorHash = "sha256-ZuYyBZHUvVMb13JkspgAS+gSA20ZKgNpF3U+m7WcRD8=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.2"];
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

  "sing-box-1_11_0-alpha_19" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.19";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.19";
            hash = "sha256-ruM5M4EJw4CwoHRLt5wzmmlyUZzOXBOEfWQvauQvpwM=";
          };
          vendorHash = "sha256-zfFO5FkRyEYt2scVQx6ihrnqYXv1ZlWglLKiMBRdsfI=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.19"];
        });
  };

  "sing-box-1_11_0-alpha_18" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.18";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.18";
            hash = "sha256-5R7tEaOcvnhkJL1B58k3aAQEqkx9cUVq2YsfUkjqa5U=";
          };
          vendorHash = "sha256-x0wXmqbRVHLp4oFiH92oqBGLBEPy0Y2Uz7r1GRF7XpM=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.18"];
        });
  };

  "sing-box-1_11_0-alpha_17" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.17";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.17";
            hash = "sha256-oPP4V7N9CzhoWvqr8nLN8W2Q8OzTorL5U/444S+qx5w=";
          };
          vendorHash = "sha256-Mv0NZSHO1dkl54kshSEj+eacE7F5dLG9VYegFJ1DWDA=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.17"];
        });
  };

  "sing-box-1_11_0-alpha_16" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.16";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.16";
            hash = "sha256-SBtLIXPld5b44aXnaKv4CkYtY/L0vn0AccGlfECsi40=";
          };
          vendorHash = "sha256-abM9tqw8Kt2Q/GpIdmIt+uXCBhgjRsm+L4jPP5R9/OQ=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.16"];
        });
  };

  "sing-box-1_11_0-alpha_15" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.15";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.15";
            hash = "sha256-/s/XUnXdbFrDGgGF5wrENhzi0Wmj90oneqw+h4x/nHY=";
          };
          vendorHash = "sha256-GaydUxm5iYu3ArjeYpPmFN/42pPJR52Xa8riiVNM/h8=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.15"];
        });
  };
}

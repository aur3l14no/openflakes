# Generated by `update_singbox.py`
pkgs: {
  "sing-box-prerelease" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.26";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.26";
            hash = "sha256-X7GoTdwdXhew0IGSxHTF8n99j/oj/wiByeioErpGJXU=";
          };
          vendorHash = "sha256-JzLD+QF0QRcgvp0zQFTSXMzwD4Gihw5FzI2ygwgkdGk=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.26"];
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

  "sing-box-1_11_0-alpha_26" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.26";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.26";
            hash = "sha256-X7GoTdwdXhew0IGSxHTF8n99j/oj/wiByeioErpGJXU=";
          };
          vendorHash = "sha256-JzLD+QF0QRcgvp0zQFTSXMzwD4Gihw5FzI2ygwgkdGk=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.26"];
        });
  };

  "sing-box-1_11_0-alpha_25" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.25";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.25";
            hash = "sha256-9JNkFt/aBpyDpuzEbTqaN28rCcyBvBQPqB9B7jlPXzo=";
          };
          vendorHash = "sha256-vbMu7Wzw3ZFPYYsp7szYyAf+nZHmD+SYaD5EtjpqhNQ=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.25"];
        });
  };

  "sing-box-1_11_0-alpha_24" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.24";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.24";
            hash = "sha256-pJhPdouLlRSXoO+NJIp4nq+fpMU0sJO+5jzd6Ngv+iU=";
          };
          vendorHash = "sha256-M/6wtEsqVLzXGAozvexo+QE/w51M1qZe13J3W9vIL3c=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.24"];
        });
  };

  "sing-box-1_11_0-alpha_23" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.23";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.23";
            hash = "sha256-rm5OmKE41/4/PEY33iUXlQBatksETogse4BExdDjEN4=";
          };
          vendorHash = "sha256-M/6wtEsqVLzXGAozvexo+QE/w51M1qZe13J3W9vIL3c=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.23"];
        });
  };

  "sing-box-1_11_0-alpha_22" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.11.0-alpha.22";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.11.0-alpha.22";
            hash = "sha256-3E8SZM1agKsNdVoO45fD+MSFI+Tz31lUDEkfrITJ6Q0=";
          };
          vendorHash = "sha256-JYVlKxJBFouXtQy7e9bEWPV39WF4O7T4fun07IOfLnM=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.11.0-alpha.22"];
        });
  };
}

# Generated by `update_singbox.py`
pkgs: {
  "sing-box-prerelease" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-beta.6";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-beta.6";
            hash = "sha256-tvRXKLd0LUaNLk0YBm6rTlUx9VP4rhUcEESip5LSauA=";
          };
          vendorHash = "sha256-KTn8xqXs5WirZwdA1zp2H79Ry9UhsQhgzWr1BLI7lFo=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-beta.6"];
        });
  };

  "sing-box-release" = pkgs.sing-box.override {
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

  "sing-box-1_8_0-beta_6" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-beta.6";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-beta.6";
            hash = "sha256-tvRXKLd0LUaNLk0YBm6rTlUx9VP4rhUcEESip5LSauA=";
          };
          vendorHash = "sha256-KTn8xqXs5WirZwdA1zp2H79Ry9UhsQhgzWr1BLI7lFo=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-beta.6"];
        });
  };

  "sing-box-1_8_0-beta_4" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-beta.4";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-beta.4";
            hash = "sha256-41qDt9QgaUmfFwVKHyFggzwVqpdgf8vAhxdtYQAaGxo=";
          };
          vendorHash = "sha256-hgwEAzVWTzxxT8bdaV/rbBeSLohiB0gPOKWpnLHvtA4=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-beta.4"];
        });
  };

  "sing-box-1_8_0-beta_3" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-beta.3";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-beta.3";
            hash = "sha256-Kv/BHnAjAH7lKXdA/Ny4svA4ZZNI1qC87X369XcCc3M=";
          };
          vendorHash = "sha256-/DqAIemgr7rHuPeP2GgNEXXUfmEjgbwOkB1/fHYk3Ww=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-beta.3"];
        });
  };

  "sing-box-1_8_0-beta_2" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-beta.2";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-beta.2";
            hash = "sha256-xfjup/mgugBmPvB1pyXqnG69VA0FydqCNJ5hc+gZQys=";
          };
          vendorHash = "sha256-8rbbQNj+fUTt7T8nke+NhBxMRskP6GNwguaXlD+Cu2k=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-beta.2"];
        });
  };

  "sing-box-1_8_0-alpha_17" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-alpha.17";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-alpha.17";
            hash = "sha256-Z4cAXuFYktO5hVsSrmu3QsPiEvHwo9w7rR338CXzZrA=";
          };
          vendorHash = "sha256-VShKu2qp4/KMPBbEZWzIRvOzFF+gMh3ShhtEsun0Gr8=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-alpha.17"];
        });
  };
}

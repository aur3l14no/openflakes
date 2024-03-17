# Generated by `update_singbox.py`
pkgs: {
  "sing-box-prerelease" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-beta.16";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-beta.16";
            hash = "sha256-xOWNJ0qtpM9rudOoV+L8JHuM2oWFpnFaAfsLun/FhUc=";
          };
          vendorHash = "sha256-wJZ+V/ekACdjF43kBqIszRouAp2YfO5cT2lGditq9IA=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-beta.16"];
        });
  };

  "sing-box-release" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.9";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.9";
            hash = "sha256-8t+AOTlX34BIftRTZgHwUW3nCPxy8NtbIIocT9YlLbU=";
          };
          vendorHash = "sha256-7FHosBMB5pzsvpHXhWEo8fgD4Rn6+CFoBNFHA+V1e6o=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.9"];
        });
  };

  "sing-box-1_8_9" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.9";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.9";
            hash = "sha256-8t+AOTlX34BIftRTZgHwUW3nCPxy8NtbIIocT9YlLbU=";
          };
          vendorHash = "sha256-7FHosBMB5pzsvpHXhWEo8fgD4Rn6+CFoBNFHA+V1e6o=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.9"];
        });
  };

  "sing-box-1_8_8" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.8";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.8";
            hash = "sha256-HbfN9H6mYRZkD1f5CmDSORP29I00u0Ye8l77wrswTE0=";
          };
          vendorHash = "sha256-tOUzshNU6TIjhWVWmlVcw/Ct/V52b+WIJHqs3+weCc0=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.8"];
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

  "sing-box-1_9_0-beta_16" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-beta.16";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-beta.16";
            hash = "sha256-xOWNJ0qtpM9rudOoV+L8JHuM2oWFpnFaAfsLun/FhUc=";
          };
          vendorHash = "sha256-wJZ+V/ekACdjF43kBqIszRouAp2YfO5cT2lGditq9IA=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-beta.16"];
        });
  };

  "sing-box-1_9_0-beta_15" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-beta.15";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-beta.15";
            hash = "sha256-2l0tTqTjfUuQWn1nDwyJiydBYuvPgAi2bp8JXBy80Og=";
          };
          vendorHash = "sha256-OXmSO6FkGLMLemq1RWr4LIHKMNPjfy56E5DrObtFZgw=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-beta.15"];
        });
  };

  "sing-box-1_9_0-beta_14" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-beta.14";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-beta.14";
            hash = "sha256-SMFb+5D3sMkHGkHonBC7P6DvxiVcwxwC470L47Kq6xI=";
          };
          vendorHash = "sha256-pvOUWGsmHYXTQzqZsB1KaE8/NGEd/bwcbPMSHPVuvUI=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-beta.14"];
        });
  };

  "sing-box-1_9_0-beta_13" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-beta.13";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-beta.13";
            hash = "sha256-THlQLYFJ+le4uvo14lTW9kEZF14cIJ/jjfwJHM5HNso=";
          };
          vendorHash = "sha256-pvOUWGsmHYXTQzqZsB1KaE8/NGEd/bwcbPMSHPVuvUI=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-beta.13"];
        });
  };

  "sing-box-1_9_0-beta_12" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-beta.12";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-beta.12";
            hash = "sha256-5JRVSEzXFucOErbZLV0fNcGNYT96gofZGRqcPBS41GM=";
          };
          vendorHash = "sha256-B/G2YQgajBsjo2dO7yyVCrKjUEi4qCwaeHpI2WCYmP8=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-beta.12"];
        });
  };
}

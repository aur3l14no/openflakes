# Generated by `update_singbox.py`
pkgs: {
  "sing-box-prerelease" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-rc.11";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-rc.11";
            hash = "sha256-g3IwSG7F/du2iAGbA3l1ysL5PebDkJIcK6GtRqKCDoU=";
          };
          vendorHash = "sha256-8qNH4tQQMwVMpyUTrpL6StkYawO1kWOYXorRTh4GeIQ=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-rc.11"];
        });
  };

  "sing-box-release" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0";
            hash = "sha256-MKvqnPHcao7Hpc6C2kEmBAAC3lHHI1nQ+Zpco9WwqoU=";
          };
          vendorHash = "sha256-8qNH4tQQMwVMpyUTrpL6StkYawO1kWOYXorRTh4GeIQ=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0"];
        });
  };

  "sing-box-1_8_0" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0";
            hash = "sha256-MKvqnPHcao7Hpc6C2kEmBAAC3lHHI1nQ+Zpco9WwqoU=";
          };
          vendorHash = "sha256-8qNH4tQQMwVMpyUTrpL6StkYawO1kWOYXorRTh4GeIQ=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0"];
        });
  };

  "sing-box-1_7_8" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.7.8";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.7.8";
            hash = "sha256-rMt5u+EusvZ6vl0xlBguh7zs6ZJgdgOaBzimsaww6Ew=";
          };
          vendorHash = "sha256-6A2FwU2ozgREdyID4TZrBHufcSWYVy4TfhI7ouIPA6c=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.7.8"];
        });
  };

  "sing-box-1_7_7" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.7.7";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.7.7";
            hash = "sha256-EiWwy417PFMzk/v6mUCPuTW/xWicq7sqPZKpL+M3ZIo=";
          };
          vendorHash = "sha256-cd0oN11YqgG8wJZJ4PiPaD1krKc2UcB0zngj9nTrpoY=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.7.7"];
        });
  };

  "sing-box-1_8_0-rc_11" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-rc.11";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-rc.11";
            hash = "sha256-g3IwSG7F/du2iAGbA3l1ysL5PebDkJIcK6GtRqKCDoU=";
          };
          vendorHash = "sha256-8qNH4tQQMwVMpyUTrpL6StkYawO1kWOYXorRTh4GeIQ=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-rc.11"];
        });
  };

  "sing-box-1_8_0-rc_10" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-rc.10";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-rc.10";
            hash = "sha256-L0HG3N9YbA69qwAfe4nsbBBkOH0qMuGTSSil4xMCLqY=";
          };
          vendorHash = "sha256-8qNH4tQQMwVMpyUTrpL6StkYawO1kWOYXorRTh4GeIQ=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-rc.10"];
        });
  };

  "sing-box-1_8_0-rc_9" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-rc.9";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-rc.9";
            hash = "sha256-I/CM0H8wwh54SPu9f8UkPPo4xtCnPGquXWI1YaFyHqk=";
          };
          vendorHash = "sha256-akUj72Jky+JmtH8ms+3hUmVBR0ZyPgVfxXEzwa2URuM=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-rc.9"];
        });
  };

  "sing-box-1_8_0-rc_8" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-rc.8";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-rc.8";
            hash = "sha256-tzwBVGdr1xOmAy6ZymIhSeX8/djZZXHnYpjZwxz2BQo=";
          };
          vendorHash = "sha256-ji/ng02z8vm/eIEEQdfkruihAOxdMJ+KUKjHfU/iN/A=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-rc.8"];
        });
  };

  "sing-box-1_8_0-rc_7" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.0-rc.7";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.0-rc.7";
            hash = "sha256-ndab0IdfuwFxQpLmW0q4HqglBIGuKSSVTCczZeWhwtY=";
          };
          vendorHash = "sha256-ji/ng02z8vm/eIEEQdfkruihAOxdMJ+KUKjHfU/iN/A=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.0-rc.7"];
        });
  };
}

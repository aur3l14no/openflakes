# Generated by `update_singbox.py`
pkgs: {
  "sing-box-prerelease" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-alpha.2";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-alpha.2";
            hash = "sha256-2fWpER2tYDhcBIpOfv0EoeZnIdcLBvCFSHJnsqD7Xgw=";
          };
          vendorHash = "sha256-xgr6Ovl46bCGAeLEF0SpuBgi0ytGP+OiGXz1WStkHcI=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-alpha.2"];
        });
  };

  "sing-box-release" = pkgs.sing-box.override {
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

  "sing-box-1_8_4" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.4";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.4";
            hash = "sha256-Zn2akHyStq014k4ze3zsqASFnn6VTQ6fu1HdYMBDI1Y=";
          };
          vendorHash = "sha256-L5TFMwhxit4Bm6h6KSEygKxGHbflNa0UQ9lzNqsvuGA=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.4"];
        });
  };

  "sing-box-1_8_2" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.8.2";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.8.2";
            hash = "sha256-+N+3RfWOIM6bZAxmmfG3jMWICWKvOC1CV4hBv8oZjIM=";
          };
          vendorHash = "sha256-NgtZ0z/9X+GWaZqQJMecF/Bxq9u8JKCewgQGSru+EJc=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.8.2"];
        });
  };

  "sing-box-1_9_0-alpha_2" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-alpha.2";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-alpha.2";
            hash = "sha256-2fWpER2tYDhcBIpOfv0EoeZnIdcLBvCFSHJnsqD7Xgw=";
          };
          vendorHash = "sha256-xgr6Ovl46bCGAeLEF0SpuBgi0ytGP+OiGXz1WStkHcI=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-alpha.2"];
        });
  };

  "sing-box-1_9_0-alpha_1" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-alpha.1";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-alpha.1";
            hash = "sha256-Wj33Eu7Y8Pxuy2bhD1jiFGuZuSHJ+O2sOsNhX2aXa9c=";
          };
          vendorHash = "sha256-5DlWxLp59f64EmEemnVa9sRzB1Ml/ZJZQuhRR2uu1Bk=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-alpha.1"];
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
}

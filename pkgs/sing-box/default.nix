# Generated by `update_singbox.py`
pkgs: {
  "sing-box-prerelease" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-beta.4";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-beta.4";
            hash = "sha256-695SLHO1WAu+dHXR9YpcBCw5cTAaxaa1/b8cpWlSqi8=";
          };
          vendorHash = "sha256-d2qjuMXZ5M2t6qzDRQiFtHBY9FWdOxfhnIYKWJWyJkQ=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-beta.4"];
        });
  };

  "sing-box-release" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.4";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.4";
            hash = "sha256-+BQWmb09kCAjJioutD9xOWxQoZtBrTJFp0yAun/nDCc=";
          };
          vendorHash = "sha256-LCA59LijHLpM1bo4/yuFGrnk0g9DSXEZwmBUspGylV8=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.4"];
        });
  };

  "sing-box-1_9_4" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.4";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.4";
            hash = "sha256-+BQWmb09kCAjJioutD9xOWxQoZtBrTJFp0yAun/nDCc=";
          };
          vendorHash = "sha256-LCA59LijHLpM1bo4/yuFGrnk0g9DSXEZwmBUspGylV8=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.4"];
        });
  };

  "sing-box-1_9_3" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.3";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.3";
            hash = "sha256-5T3Z5tayiKLeyP92Sgmxe3+QQW1QFIw3f+SF9qlr6bI=";
          };
          vendorHash = "sha256-UVFswS51OlYf01UJT7kqeCvmh3kGsiKet7tH/2AOkjc=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.3"];
        });
  };

  "sing-box-1_9_2" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.2";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.2";
            hash = "sha256-pcmY/AU/P0ebGbcJVhp8Moj4y3B2AbyZD56Fw2ZSpt4=";
          };
          vendorHash = "sha256-gmh+0NYOXcBsD+aamCTuOlgvYqmtfDnar2iGWRcepPE=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.2"];
        });
  };

  "sing-box-1_10_0-beta_4" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-beta.4";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-beta.4";
            hash = "sha256-695SLHO1WAu+dHXR9YpcBCw5cTAaxaa1/b8cpWlSqi8=";
          };
          vendorHash = "sha256-d2qjuMXZ5M2t6qzDRQiFtHBY9FWdOxfhnIYKWJWyJkQ=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-beta.4"];
        });
  };

  "sing-box-1_10_0-beta_3" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-beta.3";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-beta.3";
            hash = "sha256-EnCESTcUkH2Zn6ZUxHaa19wIKIMeKk16Pq28Gub7acE=";
          };
          vendorHash = "sha256-d2qjuMXZ5M2t6qzDRQiFtHBY9FWdOxfhnIYKWJWyJkQ=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-beta.3"];
        });
  };

  "sing-box-1_10_0-beta_2" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-beta.2";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-beta.2";
            hash = "sha256-hTpqTpeSlKVdvVL9JDyg7+J4pAhNDMypYgQ7gQS4JOU=";
          };
          vendorHash = "sha256-d2qjuMXZ5M2t6qzDRQiFtHBY9FWdOxfhnIYKWJWyJkQ=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-beta.2"];
        });
  };

  "sing-box-1_10_0-beta_1" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-beta.1";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-beta.1";
            hash = "sha256-9Ra2XvxdPVqJvE8hsNmjiQTVMonp6x7l0SVmVoNVkfY=";
          };
          vendorHash = "sha256-Im65javymgDmsaprfqlXZoPMs/Bg4j35T4hNuIOxsvI=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-beta.1"];
        });
  };

  "sing-box-1_10_0-alpha_29" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.10.0-alpha.29";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.10.0-alpha.29";
            hash = "sha256-ovNmk/pmoFtq2iXFcoOuAy4fAzDRUK3HnlpV5dhuiVw=";
          };
          vendorHash = "sha256-ArtNDARMP0mTqig3JxgO+8wc8z/CaTjFNY3l3+oN70Y=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.10.0-alpha.29"];
        });
  };
}

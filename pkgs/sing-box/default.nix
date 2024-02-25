# Generated by `update_singbox.py`
pkgs: {
  "sing-box-prerelease" = pkgs.sing-box.override {
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

  "sing-box-release" = pkgs.sing-box.override {
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

  "sing-box-1_9_0-alpha_13" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-alpha.13";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-alpha.13";
            hash = "sha256-7EwXkLJpNx2U1OBRNjBRLj8DB/M0onu0XMg1vsNe6Bc=";
          };
          vendorHash = "sha256-iDbkeJNAGt2hM/5WhiBZ2BWlx6qpysn9SI5xk0poww0=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-alpha.13"];
        });
  };

  "sing-box-1_9_0-alpha_12" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-alpha.12";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-alpha.12";
            hash = "sha256-j8YyxXNR1lDbAaZw7FHbhoSol/2SdyiwvR3ghPtDMt0=";
          };
          vendorHash = "sha256-kUsa9PZ7yUvS1KFnDuIFVqvxlaqHluLCUGNQKTDh8H4=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-alpha.12"];
        });
  };

  "sing-box-1_9_0-alpha_11" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-alpha.11";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-alpha.11";
            hash = "sha256-kqjT1XWc4DmXr35iw5S9mgFuZoTcC1XbSb4+GPDSwQQ=";
          };
          vendorHash = "sha256-MZ+2nK7OYSgfIsPa+XI80CRUN4RJy3t5LsvbbIac5MU=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-alpha.11"];
        });
  };

  "sing-box-1_9_0-alpha_10" = pkgs.sing-box.override {
    buildGoModule = args:
      pkgs.buildGoModule (args
        // {
          version = "1.9.0-alpha.10";
          src = pkgs.fetchFromGitHub {
            owner = "SagerNet";
            repo = "sing-box";
            rev = "v1.9.0-alpha.10";
            hash = "sha256-jTcOKPMh6v1Z4teZVsaFeINTO5R9wPDfNExWckP6OVU=";
          };
          vendorHash = "sha256-zda1nmda51PoGzSlyRDcvp9fuNNXLdEqpYDcbIJ7VYM=";
          ldflags = ["-X=github.com/sagernet/sing-box/constant.Version=1.9.0-alpha.10"];
        });
  };
}

{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.16";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-yGIjztgAUNpMDDCZuT9ZmWJtkPXgLsxwPD4suvjG0tE=";
  };
  vendorHash = "sha256-/9UseeMBzgt0v4QgXMCU+Qi5wde97HLRflQOOGb/8GM=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

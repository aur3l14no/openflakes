{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.10";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-GcoAxfFH/eP97E7tN//LbNCSbEASfzDL5OYHyL54eh8=";
  };
  vendorHash = "sha256-7VfAFkdI4XFkMp2GJIzPFSXyUWNwT3o+EN5gI8U/wIQ=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.20";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-aw8abQccOOyCLFafC4xxteoWiIFWYcF2zz92toKSyHw=";
  };
  vendorHash = "sha256-+JNzTSW/54EZWgsrevT/iK/UYAdHyuZ1RS37Wwg9X5k=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

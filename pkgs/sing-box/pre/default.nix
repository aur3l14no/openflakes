{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.22";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-oHgJfIv8vtxxwU1OdqjhonJpOF8J4gMs9j3/2Fy13ms=";
  };
  vendorHash = "sha256-sVzatZ4GmnZiF5iIhu+V/1eaeIAakvw+H+V7SD+pSBw=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

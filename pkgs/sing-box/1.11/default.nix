{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.14";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-lyppolw759DL5/SipalKMuMtloWi+32Jufz4XsC+Ivg=";
  };
  vendorHash = "sha256-D4E8aMoxZkHAAmAdwqXUius/QSF5szS5i581rM88ZRM=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

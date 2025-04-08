{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-beta.2";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-nQERse4ZtvDzyQ0KyECTx0BIRAZiUerTGpnfTg8BvaA=";
  };
  vendorHash = "sha256-BThfRr73MaWT4KgUGTaltMDvptTuJtK0NRnG/WXWGU8=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

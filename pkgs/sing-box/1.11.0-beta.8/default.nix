{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.8";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-LoK00049vEJlDcAhwBq2/bNAA+FMta3y1re94IBFcCw=";
  };
  vendorHash = "sha256-6R6JMqL1buagNWJK/IofDPV09yDRZLfo+6KBlwIdiZk=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

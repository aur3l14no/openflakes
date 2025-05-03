{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-beta.9";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-HfGR/Fw7aQnrFjWlvdUJGuEA9mae9pCdEmKeP6qFF1U=";
  };
  vendorHash = "sha256-84NX+I3Wn+uJzBdo8jAWmRF1edp6lBvzBL0caEI87Ac=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

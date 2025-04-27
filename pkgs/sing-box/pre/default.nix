{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-beta.6";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-Wi8DF5/CjZ10iqIjxeN5hY3Tgo6QpxR47UIepu39tOA=";
  };
  vendorHash = "sha256-wK7Wn5/rIwZhFLoh8At8WG27gicZI4cuNmXBvbn9Yek=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-beta.5";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-urkK03Znxx7fjJC7XhO/fDSwDOT3Ej6gRlHwaZwPJSw=";
  };
  vendorHash = "sha256-wK7Wn5/rIwZhFLoh8At8WG27gicZI4cuNmXBvbn9Yek=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-beta.3";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-ix64slKd+u9wzGJJGlYhEirhwswIbjDXTuba2JB2H2Y=";
  };
  vendorHash = "sha256-aSmijHcjxSv1O67HkVvSbisNYeRqnUsl+oGphpyIR/Y=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.8";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-Ks/Cu8vEUgaIovUgeiJfQnUBqalQ7SE1Hy9LFSTuVR4=";
  };
  vendorHash = "sha256-IlSuozCf/kItSPqZZWjLJcm+xorIadbFyYBddOAadCc=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

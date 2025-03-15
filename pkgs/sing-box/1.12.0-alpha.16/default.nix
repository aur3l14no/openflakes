{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.16";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-Z8PQ1ddv371O3uE4/SPSgaaxH45ojTQ5m6pAYPUVj4Y=";
  };
  vendorHash = "sha256-iWhPeoE0MkGMmHEwMmblRaGXNM7RrBq8Vm+/PHSJqKo=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

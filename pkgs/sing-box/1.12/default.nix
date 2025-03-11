{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.14";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-JdHgXZVOupSpfj+NENM33vIjDbut/5eIVNZCFVi0En4=";
  };
  vendorHash = "sha256-iWhPeoE0MkGMmHEwMmblRaGXNM7RrBq8Vm+/PHSJqKo=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

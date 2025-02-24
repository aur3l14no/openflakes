{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.12";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-8PYCkYjxslicfAuFKVSvj0KP/gVV4z0FOU0/6ZUD6hE=";
  };
  vendorHash = "sha256-kKdgmCLHePP3LacMwdjYrv97RjduWoDCSjLvIHOPTgI=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

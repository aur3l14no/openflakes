{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.10";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-dz2h8B4gaxcePBGwvSbhf2hfg4RaRutFZYB7FgUnn+8=";
  };
  vendorHash = "sha256-FFpRK+7KhqTOXI5tOyPcKfRBuLi9K38f3HS2gUJbLwA=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.11";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-w4AUDrkGjRhFvosW2wF8LJi0MQ1FuXB4strs+TOkAcc=";
  };
  vendorHash = "sha256-FFpRK+7KhqTOXI5tOyPcKfRBuLi9K38f3HS2gUJbLwA=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

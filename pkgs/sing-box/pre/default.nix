{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.17";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-lwWv5TMKhTT5DIAmjb6MycRQT9CZj7cRAKnlyPSlhjg=";
  };
  vendorHash = "sha256-LqHhZRWWb/wNA5cIoascmVrJVeyipyz2+nuF0WY0p1U=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.17";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-93Rde28tehDtQALnU7lBOZgDtR/AgGaBb89WQTQlLbU=";
  };
  vendorHash = "sha256-75FzKPGXV7ka/pC/I7XicbEp1+1jSgnWfqMj4GsbNkM=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

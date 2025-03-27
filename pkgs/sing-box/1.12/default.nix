{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.21";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-dsgNe6X446KoAWh1vKPGgqdDwg8N76tT/3Hf752vMsY=";
  };
  vendorHash = "sha256-mS2b52uKbYkv8g5bfrNSyPre/OaKwovhZBC0Abc+Nes=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

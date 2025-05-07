{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-beta.11";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-vpRy/uQZ0RwBIoMQ7u8tuaB7TI4ca6R8ZwSp7918wuw=";
  };
  vendorHash = "sha256-BMyOEMIWtnDOe46mcR5tujYW0TFsawqLzMqGNRCYLXQ=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

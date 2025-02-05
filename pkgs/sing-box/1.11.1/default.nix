{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.1";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-W/b3pAyeTQiBZ5T8u74JITlAfJ5fmWn8DUUTw9tAZTk=";
  };
  vendorHash = "sha256-NWHDEN7aQWR3DXp9nFNhxDXFMeBsCk8/ZzCcT/zgwmI=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

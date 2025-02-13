{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.7";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-fB71AM+Cil0RQqxN6oco61s3L1vMX44ClEkjMLv01lo=";
  };
  vendorHash = "sha256-hsUyqQswHGwu7G7y1xrQaalTHOSfzwGU9aIJQk/IPts=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

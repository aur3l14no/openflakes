{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.6";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-mgS2KfWrEYVZbUmdFT5avpVMRSOZG3NTcMNSH/m8MUo=";
  };
  vendorHash = "sha256-hsUyqQswHGwu7G7y1xrQaalTHOSfzwGU9aIJQk/IPts=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

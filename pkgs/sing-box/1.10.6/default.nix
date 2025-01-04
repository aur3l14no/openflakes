{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.10.6";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-EUH0SoAAAaepyjGasUGRtIr5VXboYPTO3/kaW2hG0xc=";
  };
  vendorHash = "sha256-8pkg/tAAKagVsq+EjzzdqeaUiZYVc7MkVdd7zr4b7xY=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

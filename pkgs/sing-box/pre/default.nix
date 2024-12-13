{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.9";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-TXMNtg+pW6pclyFTOrUoyQqYVIpQrCzkFJFUbuub8M8=";
  };
  vendorHash = "sha256-X+Hdr9R89fbU2Vw13XspHMHxc0XShJvW6lrizwR7dSg=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

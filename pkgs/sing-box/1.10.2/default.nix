{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.10.2";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-coc5jIpwbX31PT4y5eb7yhspALzTOUeb4VTTq/6vOUE=";
  };
  vendorHash = "sha256-ZuYyBZHUvVMb13JkspgAS+gSA20ZKgNpF3U+m7WcRD8=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

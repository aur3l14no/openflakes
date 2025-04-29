{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-beta.8";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-MU1uA1VLVLaHddYcMKGwjr3AAA4vr8FaiaDqHlC0bXg=";
  };
  vendorHash = "sha256-nnDtA+WBvtK4JVd/fF0k3JYUQE48DK7DCMFkyFykB0g=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

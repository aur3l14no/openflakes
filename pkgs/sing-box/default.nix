{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.10.5";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-gVbOJsGY8s2fVugd7Tha1dAhS9rxZbN6m3FVza0WUdc=";
  };
  vendorHash = "sha256-b0SPUVGL1ESeseWn27xQ2YFFIxJeBAfukZG6lynAIik=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

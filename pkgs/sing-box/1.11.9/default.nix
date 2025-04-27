{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.9";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-FIJD6JpUaGcyYCBjR+92QgQ/hL1Cs8tCl/9GIqLwwTw=";
  };
  vendorHash = "sha256-cK/mh0PqJoP+hBVvgll+x9ctVgjvWii2f0lXEYyGPq8=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

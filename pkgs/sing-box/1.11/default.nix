{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.3";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-TaCz3IS+t4v7p/gT19DCP5ARM3nvFqDPGtMv/Vvwmtk=";
  };
  vendorHash = "sha256-Ix4Pzq+yGfaJNPJnhLGgcCzZ85hGjSU24NffMR3ZSxQ=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

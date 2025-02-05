{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.3";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-KEWIhTTbBz/GkPeH8QsjwMuWM6xuFVtXjoDsdCxvfAw=";
  };
  vendorHash = "sha256-rFmnBahwEVOAGK1thFUd0IGP/2eeWYsZm3WlRh41H/8=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

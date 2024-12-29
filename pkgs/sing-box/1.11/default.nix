{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.19";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-v9srRL//n6k+C0SKuinJIhVZNMABk+s2tjHWdYSNNDA=";
  };
  vendorHash = "sha256-KizMnhAi6RAbCJzX8bQHRU0OxGWymNA7WtG4ixWUX9o=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

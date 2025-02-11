{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.2";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-wKQp7Lm5LN4VZ6Mbcp+44ncXX6K/NAgeW0LMoulRwz4=";
  };
  vendorHash = "sha256-Ix4Pzq+yGfaJNPJnhLGgcCzZ85hGjSU24NffMR3ZSxQ=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

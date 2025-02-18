{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.9";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-B7H+/Fsifqhn+x7Iki3j1apZz3BULirRSlKBZdZwsZ0=";
  };
  vendorHash = "sha256-32FKIx/uwoGwKQzMKoE0IeFIiuDr4wGqQkYWIdWCJ9k=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

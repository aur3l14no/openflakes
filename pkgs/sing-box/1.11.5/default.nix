{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.5";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-fU7GnkLGeJVA0YagV4faMRIf8t6t/w6u4OnYMio34Sk=";
  };
  vendorHash = "sha256-PZ4V1R3St7MZ5bH9m6wDa192alLbhpC203lsprn0pNc=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

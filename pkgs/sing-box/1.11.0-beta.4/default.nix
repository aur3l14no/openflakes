{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.4";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-4nN6cqd4niynVGWT0hEnGQzSXtwitWmD4tzNWc03Ns4=";
  };
  vendorHash = "sha256-sdFphPHjnSHgfxQLgZ8HH7Vb2PlMKLrfNMDcQDedfoU=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

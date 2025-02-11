{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.5";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-s8DcaEU2iPrj1Apt/ZqpfKK6zxdj8G7jhwMkLUsgfbA=";
  };
  vendorHash = "sha256-glG6/VXTXwJFlku1PI36O7MhnaYBGXUzbRY6h/A9EE0=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

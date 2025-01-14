{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.10.7";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-+0wzCFeQ0ZdjYKGQQcwBOAj3bGRHOaHeFMMg/hyXDGQ=";
  };
  vendorHash = "sha256-Z3SGEDphy4U+AJzI7QSTEWG/T+U/FwTlP/zJN/mBAL0=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-beta.7";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-G9pGFt+TrUghrM+mHPc8LAkkd4a+VaZT7Uu852t5m+w=";
  };
  vendorHash = "sha256-tkvnrkNLALt8GQxVIxCy/Y+gBTfdFJGcehigoOnNi3Y=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

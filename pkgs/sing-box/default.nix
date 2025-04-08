{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.7";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-lNgvJ2ycIP/dWFskiDcabFjXfLifueQIXfMW/m3Y8EA=";
  };
  vendorHash = "sha256-sq7qjEXB0XqUQ+HDItfjWryBDHXU2jqMRMQDfKHOdB0=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

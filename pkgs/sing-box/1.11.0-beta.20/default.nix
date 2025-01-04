{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.20";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-pgnOopJxNMWf0czHCF5kkCDKU8Cm/Mpo0aoVdWLVcmY=";
  };
  vendorHash = "sha256-cd9A9vgPH/ktoZuDbCdOIyfwuEv8OtoA8YsHyfMLsng=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

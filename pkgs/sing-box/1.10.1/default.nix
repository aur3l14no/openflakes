{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.10.1";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-WGlYaD4u9M1hfT+L6Adc5gClIYOkFsn4c9FAympmscQ=";
  };
  vendorHash = "sha256-lyZ2Up1SSaRGvai0gGtq43MSdHfXc2PuxflSbASYZ4A=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

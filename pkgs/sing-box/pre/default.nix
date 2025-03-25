{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.19";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-pCvR3GjP57BDqrgUHB0hE0VvYr8cevCegXROEtMTVf0=";
  };
  vendorHash = "sha256-TlDGQbUyMmlQ4I4HzC00hqeuT+z/XG9R6rKkCyPmPQI=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

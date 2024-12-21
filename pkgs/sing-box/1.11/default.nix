{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.12";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-Mol/iqhFEO272rOazmDlNuykfP2BE1bmYgUUYqdq4ww=";
  };
  vendorHash = "sha256-yFNk1WXZS/R57D5Fv8FU8t/3PM+afREeysp2lfoQoWE=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.4";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-YbZef8J3x/KLFB0PMANH5W+arO/qrs0orpCmkS+uI6A=";
  };
  vendorHash = "sha256-MgYoYldWcsgy5KK55q9IJLkLzLXW/d1D4QQ7VvkRVsc=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

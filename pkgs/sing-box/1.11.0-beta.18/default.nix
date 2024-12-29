{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.18";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-OVMRLnBe5qC/itDtnVSlVGZWuKR+LB2xyHjVXhGFdvQ=";
  };
  vendorHash = "sha256-2I0j+HgAdaERCjhtF5+Fl9P097zhOcKCeTdKUK7fQes=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

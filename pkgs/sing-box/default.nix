{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.10.4";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-UnWkvE9vUkKSgfqQYm0a3w6Hbmc21DvNqYoxjqKrrt8=";
  };
  vendorHash = "sha256-dr0yQ8x/JwuVgHxeXKXBiz1n3OWam0iqFxIFfCKOGt8=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

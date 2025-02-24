{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.4";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-Zm8hfB5tuOvTi29GZG7AvFKc3CVz8wo+KMxJKhvrSlw=";
  };
  vendorHash = "sha256-Ix4Pzq+yGfaJNPJnhLGgcCzZ85hGjSU24NffMR3ZSxQ=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

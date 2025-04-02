{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-beta.1";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-I6fFt1GZsrHl302wbxwKGyBbwvAgUA9cEpxnLWdN5Vs=";
  };
  vendorHash = "sha256-fiNv3hdasa/t/v0F5Tsifnk0unMv/p0cudE3sSF6rLs=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

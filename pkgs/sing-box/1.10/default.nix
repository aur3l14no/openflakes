{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.10.3";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-Xornyh9FT4ZqR0QjYMlgPhWEDFGb1DEPCngGpuix4A0=";
  };
  vendorHash = "sha256-3YRtwYkyvtMtMUN1O6yb1JQnSXdsb8KnQ9WsnGtvGnk=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

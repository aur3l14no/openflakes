{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-beta.4";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-7FjV0mfoc50adNGwWYHpvSuAUjbUEZYJLrJUHv05wZ0=";
  };
  vendorHash = "sha256-EmK2y0XNnpkYYGzadphZz+pXxh5NF7Le2K+C+Cjulc8=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

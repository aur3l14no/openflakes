{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.11";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-XUw/F+zfYnrhhUxC4AipPfHFN5nktObp/z5qCzsYGvc=";
  };
  vendorHash = "sha256-XB6GEw0K1jWG6nEPAF2NGKy39/u6NWwhpahBj1nXxF0=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

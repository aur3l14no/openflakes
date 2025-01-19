{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.24";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-8Leem1Nh73Xsjk15x0eX773QNuOulsZUH1fVMNxuCOk=";
  };
  vendorHash = "sha256-NWHDEN7aQWR3DXp9nFNhxDXFMeBsCk8/ZzCcT/zgwmI=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

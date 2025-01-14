{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.23";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-xdfptIRPiY+V41VgoUNS8Sh4QU3ahnaCgLGAqTCL8Ac=";
  };
  vendorHash = "sha256-NWHDEN7aQWR3DXp9nFNhxDXFMeBsCk8/ZzCcT/zgwmI=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

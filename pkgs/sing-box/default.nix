{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-or3RklqfrDIC2ZHJ7jDs1y+118/OsJiRKyDt1NCWqfI=";
  };
  vendorHash = "sha256-NWHDEN7aQWR3DXp9nFNhxDXFMeBsCk8/ZzCcT/zgwmI=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.6";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-/RTpdbDFCDk1sq7lBIXQ3ElgYqflDumffZy1DVP0zOY=";
  };
  vendorHash = "sha256-+XDkza0rymQAWUCmHhKas7FFS8lRPSmGHwAV/072aeo=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.8";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-Z9Fuvf/I0i38fymuh2v6M66EQT7KIOBeYj1aLoormwE=";
  };
  vendorHash = "sha256-lOQ+gZKNjFDXoV4olW7M4sitM8elA9I3ubwRyEX7FZY=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.5";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-vJXbiuWLQ+BD9Py75o8+WChcb4revBJEc7O5/rxMS4I=";
  };
  vendorHash = "sha256-9hQFmw5cGRmIOnC9S/THUVmYNdG88L1NSu+dE3CgA3k=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

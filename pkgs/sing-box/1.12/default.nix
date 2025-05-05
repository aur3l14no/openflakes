{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-beta.10";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-Uj7HX+mYzvPXIsEGnNoGccwu7xpeINZFUPNxqQFS4ow=";
  };
  vendorHash = "sha256-ewOQwny7EpjWRMZLp62sosvA1LFeLhFGk1iLfdX8+uU=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

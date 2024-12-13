{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.11.0-beta.6";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-JIjImrhcKUCFaT0xutgHFlwNCbDChp6SfP8RsAdNvoc=";
  };
  vendorHash = "sha256-tKEC4qbntTUqgaDn7r7nKoZNTZh3MAI9X6jdwtEcy3I=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

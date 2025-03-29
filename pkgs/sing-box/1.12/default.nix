{
  sing-box,
  buildGoModule,
  fetchFromGitHub,
}:
sing-box.overrideAttrs (oldAttrs: rec {
  version = "1.12.0-alpha.23";
  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    hash = "sha256-3Fe7XuO9NVR6Ry/a+jERE8fcz+glbOxHUpU8ApZJrUc=";
  };
  vendorHash = "sha256-s3kHLfOsYqJW4rQsNHbd2mWjvrrA0w/CbtjaaqiYoGw=";
  ldflags = [ "-X=github.com/sagernet/sing-box/constant.Version=${version}" ];
})

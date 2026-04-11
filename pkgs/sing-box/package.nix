{
  version,
  hash,
  vendorHash,
}:

{
  lib,
  stdenv,
  buildGoModule,
  fetchFromGitHub,
  installShellFiles,
  buildPackages,
  coreutils,
  nixosTests,
}:

let
  withNaiveOutbound =
    stdenv.hostPlatform.isLinux
    && (stdenv.hostPlatform.isx86_64 || stdenv.hostPlatform.isAarch64);
  libcronetVendorDir = if stdenv.hostPlatform.isx86_64 then "linux_amd64" else "linux_arm64";
in
buildGoModule {
  pname = "sing-box";
  inherit version vendorHash;

  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = "sing-box";
    rev = "v${version}";
    inherit hash;
  };

  tags = [
    "with_quic"
    "with_dhcp"
    "with_wireguard"
    "with_utls"
    "with_acme"
    "with_clash_api"
    "with_v2ray_api"
    "with_gvisor"
    "with_tailscale"
    "with_ccm"
    "with_ocm"
    "badlinkname"
    "tfogo_checklinkname0"
  ]
  ++ lib.optionals withNaiveOutbound [
    "with_naive_outbound"
    "with_purego"
  ];

  subPackages = [
    "cmd/sing-box"
  ];

  env = lib.optionalAttrs withNaiveOutbound {
    CGO_ENABLED = 0;
  };

  nativeBuildInputs = [ installShellFiles ];

  ldflags = [
    "-X=internal/godebug.defaultGODEBUG=multipathtcp=0"
    "-checklinkname=0"
    "-X=github.com/sagernet/sing-box/constant.Version=${version}"
  ];

  postInstall =
    let
      emulator = stdenv.hostPlatform.emulator buildPackages;
    in
    ''
      ${lib.optionalString withNaiveOutbound ''
        install -Dm444 \
          vendor/github.com/sagernet/cronet-go/lib/${libcronetVendorDir}/libcronet.so \
          $out/bin/libcronet.so
      ''}

      installShellCompletion --cmd sing-box \
        --bash <(${emulator} $out/bin/sing-box completion bash) \
        --fish <(${emulator} $out/bin/sing-box completion fish) \
        --zsh  <(${emulator} $out/bin/sing-box completion zsh )

      substituteInPlace release/config/sing-box{,@}.service \
        --replace-fail "/usr/bin/sing-box" "$out/bin/sing-box" \
        --replace-fail "/bin/kill" "${coreutils}/bin/kill"
      install -Dm444 -t "$out/lib/systemd/system/" release/config/sing-box{,@}.service
    '';

  passthru = {
    # Updates are handled out-of-band by scripts/update_singbox.py, which
    # invokes nix-update with --override-filename. nix-update-script would
    # rewrite package.nix instead of the version wrappers, so it is omitted.
    tests = { inherit (nixosTests) sing-box; };
  };

  meta = {
    homepage = "https://sing-box.sagernet.org";
    description = "Universal proxy platform";
    license = lib.licenses.gpl3Plus;
    maintainers = with lib.maintainers; [ nickcao ];
    mainProgram = "sing-box";
  };
}

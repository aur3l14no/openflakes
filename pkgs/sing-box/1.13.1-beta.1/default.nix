{
  lib,
  stdenv,
  buildGoModule,
  fetchFromGitHub,
  installShellFiles,
  buildPackages,
  coreutils,
  nix-update-script,
  nixosTests,
}:

let
  packageVersion = "1.13.1-beta.1";
  withUpstreamModernDefaults = lib.versionAtLeast packageVersion "1.13";
  withNaiveOutbound =
    withUpstreamModernDefaults
    && stdenv.hostPlatform.isLinux
    && (stdenv.hostPlatform.isx86_64 || stdenv.hostPlatform.isAarch64);
  libcronetVendorDir = if stdenv.hostPlatform.isx86_64 then "linux_amd64" else "linux_arm64";
in
buildGoModule rec {
  pname = "sing-box";
  version = packageVersion;

  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-cpRaFnb7hSMnLWQh84zXpMUBVc+k2KH7wDPE9C1tv40=";
  };

  vendorHash = "sha256-9+OkitjuHiXwEPtGUVQ12FpNPnLm89jUKj1M8Z4gL1s=";

  tags = [
    "with_quic"
    "with_dhcp"
    "with_wireguard"
    "with_utls"
    "with_acme"
    "with_clash_api"
    "with_gvisor"
  ]
  ++ (
    if lib.versionAtLeast version "1.12" then
      # >= 1.12
      [
        "with_tailscale"
      ]
    else
      # <= 1.11
      [
        "with_ech"
        "with_reality_server"
      ]
  )
  ++ lib.optionals withUpstreamModernDefaults [
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

  ldflags =
    lib.optionals withUpstreamModernDefaults [
      "-X=internal/godebug.defaultGODEBUG=multipathtcp=0"
      "-checklinkname=0"
    ]
    ++ [
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
    updateScript = nix-update-script { };
    tests = { inherit (nixosTests) sing-box; };
  };

  meta = with lib; {
    homepage = "https://sing-box.sagernet.org";
    description = "Universal proxy platform";
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ nickcao ];
    mainProgram = "sing-box";
  };
}

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

buildGoModule rec {
  pname = "sing-box";
  version = "1.12.18";

  src = fetchFromGitHub {
    owner = "SagerNet";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-AZ8qOkeHThtgHNXSG0roKY4s7N4QtcQwKrjihysCbdc=";
  };

  vendorHash = "sha256-s2fH5DEQW1L8y9S7m2ZGPijH8KtQJjutqrAAhiN6EXE=";

  tags =
    [
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
    );

  subPackages = [
    "cmd/sing-box"
  ];

  nativeBuildInputs = [ installShellFiles ];

  ldflags = [
    "-X=github.com/sagernet/sing-box/constant.Version=${version}"
  ];

  postInstall =
    let
      emulator = stdenv.hostPlatform.emulator buildPackages;
    in
    ''
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

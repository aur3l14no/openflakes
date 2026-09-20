# Static single-file distribution of sing-box for hosts without nix.
#
# The nix package (and the AppImage built from it) bundles libcronet.so for the
# NaiveProxy outbound. fishnet no longer uses naive, so hosts only need
# `bin/sing-box`: a reproducible tarball plus a sha256 sidecar, which works on
# glibc and musl alike because the Linux builds are CGO_ENABLED=0.
{
  lib,
  stdenvNoCC,
  gnutar,
  gzip,
  coreutils,
  sing-box,
}:

let
  system = stdenvNoCC.hostPlatform.system;
  name = "sing-box-${sing-box.version}-${system}";
in
stdenvNoCC.mkDerivation {
  pname = "sing-box-bin";
  inherit (sing-box) version;

  dontUnpack = true;
  nativeBuildInputs = [
    gnutar
    gzip
  ];

  installPhase = ''
    runHook preInstall

    mkdir -p "$out" "${name}/bin"
    cp ${lib.getExe sing-box} "${name}/bin/sing-box"
    chmod 755 "${name}/bin/sing-box"

    tar --sort=name --mtime='@0' --owner=0 --group=0 --numeric-owner \
      -czf "$out/${name}.tar.gz" "${name}"

    hash="$(${coreutils}/bin/sha256sum "$out/${name}.tar.gz" | ${coreutils}/bin/cut -d' ' -f1)"
    printf '%s  %s\n' "$hash" "${name}.tar.gz" > "$out/${name}.tar.gz.sha256"

    runHook postInstall
  '';

  meta = sing-box.meta // {
    description = "sing-box ${sing-box.version} binary tarball for ${system}";
  };
}

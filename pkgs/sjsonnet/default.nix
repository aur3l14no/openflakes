{
  lib,
  stdenv,
  fetchurl,
  makeWrapper,
  jre_headless,
}:

stdenv.mkDerivation rec {
  pname = "sjsonnet";
  version = "0.5.9";

  src = fetchurl {
    url = "https://github.com/databricks/sjsonnet/releases/download/${version}/${pname}-${version}.jar";
    hash = "sha256-xtR7sXbjuz+v1cEbdeWoBbJ6i+dACwH7A+WBvYRgzuc=";
  };

  dontUnpack = true;
  dontBuild = true;

  nativeBuildInputs = [ makeWrapper ];

  installPhase = ''
    runHook preInstall

    jarDir=$out/share/java
    install -Dm444 "$src" "$jarDir/${pname}-${version}.jar"

    makeWrapper ${jre_headless}/bin/java "$out/bin/${pname}" \
      --add-flags "-jar $jarDir/${pname}-${version}.jar"

    runHook postInstall
  '';

  meta = with lib; {
    description = "Scala implementation of the Jsonnet configuration language";
    homepage = "https://github.com/databricks/sjsonnet";
    license = licenses.mit;
    platforms = platforms.all;
    mainProgram = "sjsonnet";
    sourceProvenance = with sourceTypes; [ binaryBytecode ];
  };
}

{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
  prometheus-client,
  routeros-api,
  configobj,
  humanize,
  texttable,
  speedtest-cli,
}:
buildPythonPackage rec {
  pname = "mktxp";
  version = "1.2.1";
  propagatedBuildInputs = [
    prometheus-client
    routeros-api
    configobj
    humanize
    texttable
    speedtest-cli
    setuptools
  ];

  src = fetchFromGitHub {
    owner = "akpw";
    repo = "mktxp";
    rev = "v1.2.1";
    fetchSubmodules = false;
    sha256 = "sha256-WRAr4JhxKWNheuu/pwiQ8e+m44MnJdzcdSWKEAtKHYY=";
  };

  doCheck = false;

  meta = with lib; {
    inherit (src.meta) homepage;
    description = "Prometheus Exporter for Mikrotik RouterOS devices";
    license = licenses.gpl2Plus;
  };
}

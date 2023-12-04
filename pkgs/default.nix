{
  packages = pkgs: {
    sing-box = pkgs.callPackage ./sing-box {};
    sing-box-prerelease = pkgs.callPackage ./sing-box-prerelease {};
  };
}

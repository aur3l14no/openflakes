pkgs: {
  callPackageVariants =
    root: override:
    let
      name = builtins.baseNameOf root;
      subDirs = builtins.attrNames (
        pkgs.lib.filterAttrs (n: v: v == "directory") (builtins.readDir root)
      );
    in
    builtins.listToAttrs (
      builtins.map (variant: {
        name = "${name}-${variant}";
        value = pkgs.callPackage (root + "/${variant}") override;
      }) subDirs
    );
}

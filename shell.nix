{ pkgs ? import <nixpkgs> {} }:

# creates a derivation
# - What is a derivation? Analogy with DEB meta data or Arch PKGBUILD
# - Describe the build process phases along with dependencies
# Useful commands
# nix search <package>
pkgs.mkShell {
  buildInputs = [
    pkgs.nodePackages_10_x.node2nix
    pkgs.nodejs-10_x
    pkgs.nixops
  ];
}

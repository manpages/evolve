{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghc7101" }:

let

  inherit (nixpkgs) pkgs;

  f = { mkDerivation, base, stdenv }:
      mkDerivation {
        pname = "evolve";
        version = "0.0.1";
        sha256 = "0";
        isLibrary = false;
        isExecutable = true;
        buildDepends = [ base ];
        homepage = "http://memorici.de";
        description = "Small library for composing incomplete (evolving) models";
        license = stdenv.lib.licenses.mit;
      };

  drv = pkgs.haskell.packages.${compiler}.callPackage f {};

in

  if pkgs.lib.inNixShell then drv.env else drv

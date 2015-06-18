{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghc7101" }:

let

  inherit (nixpkgs) pkgs;

  f = { mkDerivation, base, stdenv, time }:
      mkDerivation {
        pname = "evolve";
        version = "0.0.1";
        src = ./.;
        isLibrary = true;
        isExecutable = true;
        buildDepends = [ base time ];
        homepage = "http://memorici.de";
        description = "Small library for composing incomplete (evolving) models";
        license = stdenv.lib.licenses.mit;
      };

  drv = pkgs.haskell.packages.${compiler}.callPackage f {};

in

  if pkgs.lib.inNixShell then drv.env else drv

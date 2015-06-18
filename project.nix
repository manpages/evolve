{ mkDerivation, base, stdenv, time }:
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
}

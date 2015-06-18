{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "evolve";
  version = "0.0.1";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  buildDepends = [ base ];
  homepage = "http://memorici.de";
  description = "Small library for composing incomplete (evolving) models";
  license = stdenv.lib.licenses.mit;
}

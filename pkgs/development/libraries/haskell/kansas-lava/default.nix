{ cabal, cmdargs, dataDefault, dataReify, dotgen, filepath, netlist
, netlistToVhdl, random, sizedTypes, strict
}:

cabal.mkDerivation (self: {
  pname = "kansas-lava";
  version = "0.2.4";
  sha256 = "0rsjlj558k57r1sfm12n9r9wn8r615bbrwgjhal07qhvy4qip4pg";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    cmdargs dataDefault dataReify dotgen filepath netlist netlistToVhdl
    random sizedTypes strict
  ];
  jailbreak = true;
  meta = {
    homepage = "http://ittc.ku.edu/csdl/fpg/Tools/KansasLava";
    description = "Kansas Lava is a hardware simulator and VHDL generator";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})

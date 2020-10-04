{ pkgs ? import ./pinned.nix {} }:

let
  haskellPackages = pkgs.haskell.packages.ghc884.override {
    overrides = hpNew: hpOld: {
      some-lib = hpNew.callCabal2nixWithOptions "someLib" ./. "" {};
    };
  };

in
{
  some-lib = haskellPackages.some-lib;

  shell = haskellPackages.shellFor {
    packages = p: with p; [
      some-lib
    ];
    buildInputs = with haskellPackages; [
      cabal-install
    ];
    # withHoogle = true;
  };
}

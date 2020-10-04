{ pkgs ? import ./pinned.nix {} }:

let
  myHaskellPackages = pkgs.haskell.packages.ghc884.override {
    overrides = hpNew: hpOld: {
      some-lib = hpNew.callCabal2nixWithOptions "someLib" ../some-lib "" {};
      my-app = hpNew.callCabal2nixWithOptions "myApp" ./. "" {};
    };
  };

in
{
  my-app = myHaskellPackages.my-app;

  shell = myHaskellPackages.shellFor {
    packages = p: with p; [
      my-app
    ];
    buildInputs = with myHaskellPackages; [
      cabal-install
    ];
    # withHoogle = true;
  };
}

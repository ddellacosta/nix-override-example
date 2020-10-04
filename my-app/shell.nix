# { nixpkgs ? import ./pinned.nix {}, withHoogle ? true }:
# 
# let
# #  myHaskellPackages = nixpkgs.haskell.packages.ghc884.override {
# #    overrides = hself: hsuper: {
# #      some-lib = hself.callPackage ../some-lib/default.nix { };
# #    };
# #  };
# 
# #  hpkgs = myHaskellPackages;
#   hpkgs = nixpkgs.haskell.packages;
#   my-app = nixpkgs.callPackage ./. {};
# in
# my-app.overrideAttrs (drv: {
#   buildInputs = drv.buildInputs ++ [ nixpkgs.cabal-install ];
# })

(import ./release.nix { }).shell  

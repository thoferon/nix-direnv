let
  sources = import ./sources.nix;
  pkgs = import sources.nixpkgs {};

  customGhc = pkgs.haskell.packages.ghc865.ghcWithPackages (p: [
    p.process
    p.random
  ]);

in
pkgs.mkShell {
  buildInputs = [
    customGhc
    pkgs.cowsay
  ];

  PORT = 3000;
}
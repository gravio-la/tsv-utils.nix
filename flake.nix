{
  description = "set of command line utilities for manipulating large tabular data files";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-22.11";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system}; in rec
      {
        packages.tsvutils = pkgs.callPackage ./default.nix {};
        defaultPackage = packages.tsvutils;
        devShell = pkgs.mkShell {
          buildInputs = with pkgs; [ dmd ];
        };
      }
    );
}

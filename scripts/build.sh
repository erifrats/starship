#!/bin/sh

nix-build --expr "with import <nixpkgs> {}; callPackage ./default.nix {}"

#!/bin/bash

sudo apt-get update && sudo apt-get -y install \
curl \
sudo \
unzip \
xz-utils \
wget

curl https://nixos.org/nix/install | sh

nix-env -i ripgrep

nix-env -iA nixpkgs.jq
nix-env -iA nixpkgs.neovim
nix-env -iA nixpkgs.python35Packages.neovim
nix-env -iA nixpkgs.platinum-searcher
nix-env -iA nixpkgs.ag

nix-env -iA nixpkgs.glibcLocales
export LOCALE_ARCHIVE="$(readlink ~/.nix-profile/lib/locale)/locale-archive"

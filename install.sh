#!/bin/bash

nix --extra-experimental-features "nix-command flakes" run home-manager/master -- init

rm ~/.config/home-manager/home.nix

git clone https://github.com/TheBigLee/nix-config.git ~/.config/home-manager

cd ~/.config/home-manager || exit
git pull || true
cd || exit

nix --extra-experimental-features "nix-command flakes" run home-manager/master -- --flake ~/.config/home-manager#devcontainer@devcontainer switch -L -b backup --extra-experimental-features "nix-command flakes"

sudo apt update && sudo apt install python3-yaml -y

sudo chsh -s /usr/bin/zsh $USER


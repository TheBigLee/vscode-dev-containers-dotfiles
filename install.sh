#!/usr/bin/env zsh
export PATH="$HOME/.local/bin:$PATH"

mkdir -p ${HOME}/.local/bin

echo "Install chezmoi"
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin init --apply git@github.com:TheBigLee/dot-chezmoi.git


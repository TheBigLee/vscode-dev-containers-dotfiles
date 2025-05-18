#!/usr/bin/env zsh
export PATH="$HOME/.local/bin:$PATH"

echo "Install chezmoi"
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply git@github.com:TheBigLee/dot-chezmoi.git

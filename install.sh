#!/usr/bin/env zsh
export PATH="$HOME/.local/bin:$PATH"

echo "Install chezmoi"
sh -c "$(curl -fsLS get.chezmoi.io/lb)" -- init --apply git@github.com:TheBigLee/dot-chezmoi.git

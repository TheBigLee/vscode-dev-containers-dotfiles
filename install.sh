#!/usr/bin/env zsh
export PATH="$HOME/.local/bin:$PATH"

mkdir -p ${HOME}/.local/bin

echo "Install exa"
export EXAVERSION="0.10.1"
curl -L -o exa.zip https://github.com/ogham/exa/releases/download/v${EXAVERSION}/exa-linux-x86_64-v${EXAVERSION}.zip && unzip exa.zip -d exa && install -c -m 0755 exa/bin/exa ${HOME}/.local/bin && rm -rf exa && rm exa.zip

echo "Install chezmoi"
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b $HOME/.local/bin init --apply git@github.com:TheBigLee/dot-chezmoi.git


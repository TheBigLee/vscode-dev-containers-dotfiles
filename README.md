[Personalizing dotfile repositories in vscode](https://code.visualstudio.com/docs/remote/containers#_personalizing-with-dotfile-repositories)

## Configuration
Add the following to your vscode settings.json file.
```
    "dotfiles.installCommand": "~/.dotfiles/install.zsh",
    "dotfiles.repository": "https://github.com/TheBigLee/vscode-dev-containers-dotfiles.git",
    "dotfiles.targetPath": "~/.dotfiles",
```


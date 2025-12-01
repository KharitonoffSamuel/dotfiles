#!/bin/bash
set -e

echo "=== Installation des dotfiles ==="

# Cloner Oh-My-Zsh si absent
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installation d'Oh-My-Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Copier les fichiers de configuration
echo "Copie des fichiers de configuration..."
cp .zshrc ~/.zshrc
cp .gitconfig ~/.gitconfig
cp .vimrc ~/.vimrc

echo "=== Installation terminée ! ==="
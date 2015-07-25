#!/bin/bash

if [ ! -f deactivate.sh ]; then
    echo "This script should be run from the .dotfiles dir"
    exit 1
fi

cd ~
unlink ~/.gitconfig
unlink ~/.githelpers
unlink ~/.gitignore
unlink ~/.vim
unlink ~/.vim.d
unlink ~/.vimrc
unlink ~/.zshrc
rm ~/.oh-my-zsh

ZSH_FILES="zsh_aliases zsh_paths zsh_terminal_tweaking zsh_functions zsh_tweaks"
[[ $OSTYPE == darwin* ]] && ZSH_FILES="$ZSH_FILES zsh_osx_specifics"
for FILE in $(echo $ZSH_FILES); do 
    unlink ~/.zsh.d/$FILE
done

echo <<-EOF
Dotfiles enabled, by default this includes zsh, irb, git and vim personal configurations.
echo <<-EOF
Dotfiles disabled.
EOF

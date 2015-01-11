#!/bin/bash

if [ ! -f activate.sh ]; then
    echo "This script should be run from the .dotfiles dir"
    exit 1
fi

git submodule init
git submodule update

cd ~
ln -s .dotfiles/gitconfig .gitconfig  
ln -s .dotfiles/githelpers .githelpers 
ln -s .dotfiles/gitignore .gitignore  
ln -s .dotfiles/vim .vim        
ln -s .dotfiles/vimrc .vimrc        
ln -s .dotfiles/irbrc .irbrc        
ln -s .dotfiles/zshrc .zshrc
ln -s .dotfiles/zsh_aliases .zsh_aliases  

ln -s .dotfiles/bin/git-difference
ln -s .dotfiles/bin/runpipe /usr/bin/runpipe
ln -s .dotfiles/bin/swap-io-usage /usr/bin/swap-io-usage
ln -s .dotfiles/bin/swap-usage /usr/bin/swap-usage
ln -s .dotfiles/bin/watch-uninterruptible /usr/bin/watch-uninterruptible


vim +PluginInstall +qall

ln -s .dotfiles/oh-my-zsh .oh-my-zsh

#!/bin/sh
#
#

export HOME=/Users/$(echo $USER)  
ln -s $HOME/.config/home_config/zsh-config/.zshrc $HOME/.zshrc
ln -s $HOME/.config/home_config/zsh-config/.zshenv $HOME/.zshenv
ln -s $HOME/.config/home_config/kitty $HOME/.config/kitty
ln -s $HOME/.config/home_config/nvim $HOME/.config/nvim
ln -s $HOME/.config/home_config/.oh-my-zsh $HOME/.oh-my-zsh

echo "export HOME=/Users/dominikocsofszki change to your home name. inside .zshenv"
# vi $HOME/.zshenv

#!/bin/sh
#
#

export XDG_CONFIG_HOME=$HOME/.config
export ZSH_CONFIG=$XDG_CONFIG_HOME/home_config/zsh-config

ln -s $HOME/.config/home_config/zsh-config/.zshrc $HOME/.zshrc
ln -s $HOME/.config/home_config/zsh-config/.zshenv $HOME/.zshenv
ln -s $HOME/.config/home_config/kitty $HOME/.config/kitty
ln -s $HOME/.config/home_config/nvim $HOME/.config/nvim
ln -s $HOME/.config/home_config/.oh-my-zsh $HOME/.oh-my-zsh

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $HOME/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CONFIG/zsh_plugins/zsh-autosuggestions
git clone https://github.com/Aloxaf/fzf-tab $ZSH_CONFIG/zsh_plugins/fzf-tab
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git  $ZSH_CONFIG/zsh_plugins/zsh-syntax-highlighting



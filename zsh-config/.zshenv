


echo ">>>> loading, sourcing ~/.zshenv"
export HOME=/Users/dominikocsofszki
export HOME_CONFIG=$HOME/.config/home_config
export ZSH_CONFIG=$HOME_CONFIG/zsh-config

source $ZSH_CONFIG/.zsh_functions
source $ZSH_CONFIG/.zsh_alias

export PATH=/Library/Frameworks/Python.framework/Versions/3.11/bin/python3:$PATH
alias cpc=pbcopy



# this line can be used for testing 
# echo ">>>> loading, sourcing ~/.zshenv"
export HOME=/Users/dominikocsofszki
export HOME_CONFIG=$HOME/.config/home_config
export ZSH_CONFIG=$HOME_CONFIG/zsh-config
export XDG_CONFIG_HOME=$HOME/.config


source $ZSH_CONFIG/.zprofile
source $ZSH_CONFIG/.zsh_functions
source $ZSH_CONFIG/.zsh_alias
source $ZSH_CONFIG/.zsh_alias_git

export PAGER="col -b|nvim -R -c 'set ft=man' - "
# echo ">>>> ending, sourcing ~/.zshenv"

export NNN_PLUG='p:preview-tui;t:preview-tabbed;o:fzopen;i:imgview;m:myplug'
export NNN_FIFO='/tmp/nnn.fifo'
export VISUAL='nvim' 
export EDITOR='nvim' 
export NNN_OPENER=nuke


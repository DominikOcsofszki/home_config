# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

export LANG=en_US.UTF-8
# export HOMECONFIG='/Users/dominikocsofszki/.config/home_config'
alias b="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
alias fh='nvim  $(ls -a | b)'
#alias fh='nvim  $(ls -a | fzf)'
alias fhh='nvim  ~/$(ls -a ~ | b)'
alias f='nvim  $(ls  ~ | b)'
alias n='nvim $(find . | b)'
eval "$(lua /Users/dominikocsofszki/Dev/git_downloads/z.lua/z.lua --init zsh)"
alias nv='nvim $(fzf)'
alias cpdd='cp ~/Downloads/"$(ls ~/Downloads/| b)" ~/Uni/univim/downloads'
alias sourceall=' source $HOME_CONFIG/.zprofile; source  $HOME_CONFIG/.zshrc '
#$HOME_CONFIG.zprofile;



#EXPORTS
export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid  {}'"
# export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

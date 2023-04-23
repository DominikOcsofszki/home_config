# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

export LANG=en_US.UTF-8
eval "$(lua /Users/dominikocsofszki/Dev/git_downloads/z.lua/z.lua --init zsh)"
alias cpdd='cp ~/Downloads/"$(ls ~/Downloads/| fzf)" ~/Uni/univim/downloads'
alias cpD='cp "$(_fcpD)"  ~/Uni/univim/downloads'
alias _fcpD="fd .pdf$ ~/Downloads/ | fzf  --preview-window 'right:60%' --preview ' pdftotext -layout -f 1  {} -'"

#$HOMh_CONFIG.zprofile;
# alias fhh='nvim ~/$(ls -a ~ | fzf -q "zprofile | conf | zsh ")'
alias fH='nvim ~/.config/home_config/$(ls -a ~/.config/home_config/ | fzf --height=50% --reverse )'
alias fh='nvim ~/.config/home_config/$(ls -a ~/.config/home_config/ | fzf --height=50% --reverse --preview "bat {}")'
# alias CC="nvim ~/.config/home_config/$(fd -H . ~/.config/home_config/ | fzf --preview-window 'right:60%' --preview 'cat ')"
#alias fH="nvim ~/$(ls -a ~ | fzf -q \" zp | conf | zsh \")"

alias S=' source $HOME_CONFIG/.zprofile; source  $HOME_CONFIG/.zshrc source  $HOME_CONFIG/.zsh_myscript'
#EXPORTS
# export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid  {}'"
alias fp="fzf  --preview-window 'right:60%' --preview 'pdftotext -layout -f 1 {} -'"
alias fzpdf="fd .pdf$ . | fzf  --preview-window 'right:60%' --preview ' pdftotext -layout -f 1  {} -'"
# export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
alias .="nvim ."
alias n='nvim $(fz)'
## https://github.com/bellecp/fast-p
p () {
    local open
    open=open   # on OSX, "open" opens a pdf in preview
    fd 'pdf$' \
    | fzf --read0 --reverse -e -d $'\t'  \
        --preview-window down:80% --preview '
            v=$(echo {q} | gtr " " "|"); 
            echo -e {1}"\n"{2} | ggrep -E "^|$v" -i --color=always;
        ' \
    | gcut -z -f 1 -d $'\t' | gtr -d '\n' | gxargs -r --null $open > /dev/null 2> /dev/null
}

    #| fast-p source $HOME_CONFIG.zsh_myscript


alias tmuxA="tmux attach -t \$(tmux ls | fzf | cat | gcut -s -f 1 -d $':')"
alias searchPDF="rg . ~/Uni/univim/downloads/.pdftext/  | fzf | gcut -s -f 1 -d $':' | sd ' ' '\\ ' | xargs open"


go () {
    # open "http://google.com/search?q=$1+$2+$3"
    open "http://google.com/search?q=$(echo \"$@\" | sd ' ' '+' | sd '"' '')"
    # open "http://google.com/search?q=${search}"
}

Alias () {
    # $(alias | fzf | col | gcut -s -f 1 -d $'=' | sd ' ' '')
    alias | fzf | col | gcut -s -f 1 -d '=' | sd ' ' ''

}
# alias findFiles="fd --type file  |  fzf --margin 5% --padding 5% --border --preview 'bat {}' --color bg:#222222,preview-bg:#333333"
alias findFiles="fd --type file  |  fzf --margin 5% --padding 5% --border --preview 'bat {}' --color bg:#222222,preview-bg:#333333"
alias findA="fd --type file  |  fzf --margin 5% --padding 5% --border --preview 'bat {}' --color bg:#222222,preview-bg:#333333 --bind 'S:preview:cat {} | /Users/dominikocsofszki/Uni/univim/bin/imgcat.sh' --bind 'Q:preview: cat {} |  /Users/dominikocsofszki/Uni/univim/bin/imgcat.sh | cat'"
alias browse="fd | fzf --preview 'bat {}' --bind '0:preview:open {}' --bind 'enter:execute(nvim {})'"


alias fzfP="fzf --margin 5% --padding 5% --border --preview 'bat {}' --color bg:#222222,preview-bg:#333333"
alias fzfP="fzf --margin 1% --padding 5% --border --preview 'bat {}' --color bg:#222222,preview-bg:#333333"

alias x="ls -a |fzf -q '.sh$' --height=~10% --border=bold --preview 'cat {}' --bind '?:preview(ls {})' --border-label='              PRESS: ? = ls into folder     ' --bind 'enter:execute( {})'"

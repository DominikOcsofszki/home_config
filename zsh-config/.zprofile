# Set PATH, MANPATH, etc., for Homebrew.
# eval "$(/opt/homebrew/bin/brew shellenv)"

export LANG=en_US.UTF-8


go () {
    open "http://google.com/search?q=$(echo \"$@\" | sd ' ' '+' | sd '"' '')"
}

Alias () {
    alias | fzf | col | gcut -s -f 1 -d '=' | sd ' ' ''

}


linksFrom () {
    cat $1 | grep -o 'href="[^"]*"' | grep -o '"[^"]*"' | grep http | gcut -d '"' -f 2
}

allLinksFrom () {
    for  arg in $* 
    do
        linksFrom $arg
    done

}

openAllEntries () {
    cat $1 | while IFS= read -r filename; do open "$filename"; done
}


# alias fzpdf="fd .pdf$ . | fzf  --preview-window 'right:60%' --preview ' pdftotext -layout -f 1  {} -'"
# alias searchPDF="rg . $HOME/Uni/univim/downloads/.pdftext/  | fzf | gcut -s -f 1 -d $':' | sd ' ' '\\ ' | xargs open"
# alias ali="Ali | xargs | zsh "
# alias findFiles="fd --type file  |  fzf --margin 5% --padding 5% --border --preview 'bat {}' --color bg:#222222,preview-bg:#333333"
# alias findA="fd --type file  |  fzf --margin 5% --padding 5% --border --preview 'bat {}' --color bg:#222222,preview-bg:#333333 --bind 'S:preview:cat {} | $HOME/Uni/univim/bin/imgcat.sh' --bind 'Q:preview: cat {} |  $HOME/Uni/univim/bin/imgcat.sh | cat'"
# alias browse="fd | fzf --preview 'bat {}' --bind '0:preview:open {}' --bind 'enter:execute(nvim {})'"
# alias xx="ls -a |fzf -q '.sh$' --height=~5% --border=bold --preview 'cat {}' --bind '?:preview(ls {})' --border-label='  ctrl-c:quit    ' --bind '~:execute(zsh {})'"
# alias X=' echo "enter for execution"; zsh $(xx); echo "executed"'
# alias sA="alias | nvim -R  -"
# alias Ali="alias | fzf | col  | gcut -s -f 2- -d '=' | sd ' ' ''|xargs echo"
# alias Ali="alias | fzf  | gcut  -f 2- -d '=' | cat  " 
# alias fAli="Ali | gcut -c 1- | rev"
#
#
# alias showdownloads='ls $HOME/Downloads/| fzf --preview "cat $HOME/Downloads/{}"'
# alias  cphere='cp $HOME/Downloads/"$(ls $HOME/Downloads/| fzf)" $(pwd)'  

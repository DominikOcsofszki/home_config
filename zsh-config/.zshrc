# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $ZSH_CONFIG/init_zsh_oh_my.conf

# bun completions
[ -s "/Users/dominikocsofszki/.bun/_bun" ] && source "/Users/dominikocsofszki/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/Dev/Installs/apache-maven-3.9.4/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="$HOME/dominikocsofszki/.npm-global/bin:$PATH"
# source $ZSH_CONFIG/.newtest
export PATH=/Users/dominikocsofszki/dominikocsofszki/.npm-global/bin:/opt/homebrew/opt/openjdk/bin:/Users/dominikocsofszki/Dev/Installs/apache-maven-3.9.4/bin:/Users/dominikocsofszki/.bun/bin:/Users/dominikocsofszki/Dev/FlutterDev/flutter/bin:/Users/dominikocsofszki/.pub-cach/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/Users/dominikocsofszki/dominikocsofszki/.npm-global/bin:/opt/homebrew/opt/openjdk/bin:/Users/dominikocsofszki/Dev/Installs/apache-maven-3.9.4/bin:/Users/dominikocsofszki/.bun/bin:/Users/dominikocsofszki/Dev/FlutterDev/flutter/bin:/Users/dominikocsofszki/.pub-cach/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Library/TeX/texbin:/opt/homebrew/bin:/opt/homebrew/sbin:/Applications/kitty.app/Contents/MacOS:/opt/homebrew/opt/fzf/bin:/Users/dominikocsofszki/.local/bin
export M2_HOME=/opt/homebrew/Cellar/maven
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

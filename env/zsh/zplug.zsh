export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# plugins
zplug "b4b4r07/enhancd", use:init.sh
if zplug check "b4b4r07/enhancd"; then
    export ENHANCD_FILTER="fzf --height 50% --reverse --ansi"
    export ENHANCD_DOT_SHOW_FULLPATH=1
fi
zplug "tarrasch/zsh-bd"

zplug "chrissicool/zsh-256color"
zplug "supercrabtree/k"

zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "zsh-users/zsh-completions"

zplug "glidenote/hub-zsh-completion"

zplug "ahmetb/kubectx", use:kubectx, as:command
zplug "ahmetb/kubectx", use:kubens, as:command
zplug "johanhaleby/kubetail"

# prompt
zplug "mafredri/zsh-async", on:sindresorhus/pure
zplug "sindresorhus/pure", defer:2

zplug check || zplug install

zplug load


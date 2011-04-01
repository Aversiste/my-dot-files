# Alias
alias vim='vim'
alias ne='vim'
alias df='df -h'
alias du='du -h'
alias ll="ls -lhF"
alias la="ls -lhFa"
alias ocaml="rlwrap ocaml"

alias gnus='emacs -f gnus'

#confusing keyword
alias male='make'
alias made='make'
alias naje='make'
alias maek='make'
alias nake='make'

# Keys
bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line
bindkey "^[[5~~" beginning-of-history
bindkey "^[[6~~" end-of-history
bindkey "^[[3~" delete-char
bindkey "^H" backward-delete-word
bindkey "^X" copy-region-as-kill
bindkey "^W"  backward-kill-word
bindkey "^[Od" backward-word
bindkey "^[Oc" forward-word
bindkey "^[[2~" overwrite-mode
bindkey "^[k" vi-up-line-or-history
bindkey "^[j" vi-down-line-or-history

# Options
unsetopt beep
unsetopt hist_beep
unsetopt list_beep
setopt AUTO_CONTINUE
setopt extendedglob
setopt AUTO_LIST
setopt MULTIBYTE
setopt ALL_EXPORT
setopt AUTO_CD

zmodload zsh/net/tcp
autoload zcalc
autoload ztodo
autoload -Uz tetris
zle -N tetris
autoload zed

# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct
zstyle ':completion:*' file-sort name
zstyle ':completion:*' ignore-parents parent pwd
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=**'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select=4
zstyle ':completion:*' prompt '{%e}>'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle :compinstall filename '/home/xin/.zshrc'

autoload -Uz compinit
compinit

# Set EDITOR as default for plaintext stuff
for s in txt c cc cxx cpp; do
	alias -s $s=$EDITOR
done

source ~/.zsh.d/utils.zsh
source ~/.zsh.d/git.zsh
source ~/.zsh.d/sum.zsh

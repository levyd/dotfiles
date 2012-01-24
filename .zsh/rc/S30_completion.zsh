# Completion

autoload -Uz compinit
compinit

## This section added by compinstall
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:correct:::' max-errors 2
zstyle ':completion:*' format '%B%U%d%u%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'l:|=* r:|=*' 'r:|[._-]=** r:|=**'
#zstyle ':completion:*' matcher-list '' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' # Old matchers
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %S%p%s
zstyle :compinstall filename '/home/dan/.zsh/rc/S30_completion.zsh'

## This section is my tweaks
zstyle ':completion:*' insert-tab false
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' verbose yes


# Used for git in prompt
typeset -ga preexec_functions
typeset -ga precmd_functions
typeset -ga chpwd_functions

unsetopt MULTIBYTE

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

setopt NOBEEP


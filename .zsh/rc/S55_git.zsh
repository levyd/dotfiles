setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
        '%F{3}(%s %b|%F{1}%a%F{3})%f'
zstyle ':vcs_info:*' formats       \
        '%F{3}(%s %b%F{1}%u%F{8}%c%F{3})%f'
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b:%r'
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr '+'
zstyle ':vcs_info:git:*' unstagedstr '!'

zstyle ':vcs_info:*' enable git


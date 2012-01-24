precmd () {
    print -Pn "\e]0;%n@%M: %~\a"
    vcs_info
}

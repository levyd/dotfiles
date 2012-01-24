setopt extended_glob
for zshrcscript in ~/.zsh/rc/S[0-9][0-9]*[^~] ; do
    source $zshrcscript
done


. $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)

[ -d "~/.asdf/plugins/java" ] && . ~/.asdf/plugins/java/set-java-home.zsh

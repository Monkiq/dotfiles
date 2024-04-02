if [ "$(uname)" = "Darwin" ]; then
	alias s="kitten ssh "
elif [ "$(uname)"="Linux" ]; then
fi

command -v nvim >/dev/null && alias vim=nvim

command -v lsd >/dev/null && alias ls=lsd

command -v zoxide >/dev/null && eval "$(zoxide init zsh)"

alias kk=kubectl

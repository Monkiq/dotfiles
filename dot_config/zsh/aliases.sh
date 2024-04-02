if [ "$(uname)" = "Darwin" ]; then
	alias s="kitten ssh "
elif [ "$(uname)"="Linux" ]; then
fi

if command -v nvim >/dev/null 2>&1; then
	alias vim=nvim
fi
if command -v lsd >/dev/null 2>&1; then
	alias ls=lsd
fi
if command -v zoxide >/dev/null 2>&1; then
	eval "$(zoxide init zsh)"
fi

alias kk=kubectl

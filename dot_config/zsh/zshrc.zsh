export ZSH=$HOME/.config/zsh
# 加载zinit插件
source $ZSH/zinit.zsh

# zsh 自动补全功能
autoload -Uz compinit && compinit
# zsh 颜色功能
autoload -Uz colors && colors  # provide color variables (see `which colors`)


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.config/zsh/aliases.sh
source ~/.config/zsh/functions.sh
source ~/.config/zsh/config/p10k-robbyrussell.zsh

eval "$(atuin init zsh)"

export EDITOR='nvim'
export VISUAL='nvim'

source ~/.config/zsh/export.zsh

if [ "$(uname)" = "Darwin" ]; then
      test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
      export PATH="/Users/monkiq/.cargo/bin:$PATH"
	if [ -d "${HOME}/.nvm" ]; then
	      export NVM_DIR="$HOME/.nvm"
	      [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
	      [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
  fi
elif [ "$(uname)"="Linux" ]; then
      export GOPATH=~/go
      export PATH=/usr/local/go/bin:$GOPATH/bin:$PATH
	if [ -d "${HOME}/.nvm" ]; then
		export NVM_DIR="$HOME/.nvm"
		[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
		[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
	fi
  source /usr/share/nvm/init-nvm.sh
fi

# eval $(thefuck --alias)
# g shell setup
if [ -f "${HOME}/.g/env" ]; then
    . "${HOME}/.g/env"
fi


export PATH="/opt/homebrew/opt/llvm/bin:$PATH"


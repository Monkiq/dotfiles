export ZSH=$HOME/.config/zsh
# 加载zinit插件
source $ZSH/zinit.zsh

# zsh 自动补全功能
autoload -Uz compinit && compinit
# zsh 颜色功能
autoload -Uz colors && colors  # provide color variables (see `which colors`)


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.config/zsh/aliases.sh
source ~/.config/zsh/functions.sh
source ~/.config/zsh/p10kconfig/p10k-rainbow.zsh

eval "$(atuin init zsh)"

export EDITOR='nvim'
export VISUAL='nvim'

source ~/.config/zsh/zsh-export.zsh

# eval $(thefuck --alias)
# g shell setup


export PATH="/opt/homebrew/opt/llvm/bin:$PATH"


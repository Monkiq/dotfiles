export ZSH=$HOME/.config/zsh

# 加载zim插件,自带补全，不需要启动zsh的compinit
source $ZSH/zim.zsh
# zsh 颜色功能
autoload -Uz colors && colors  # provide color variables (see `which colors`)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.config/zsh/functions.sh
source ~/.config/zsh/aliases.sh
source ~/.config/zsh/zsh-export.zsh
source ~/.config/zsh/p10kconfig/p10k-rainbow.zsh

export EDITOR='nvim'
export VISUAL='nvim'




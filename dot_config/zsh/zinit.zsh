# zinit插件管理
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
   zinit ice depth"1"
	 zinit light romkatv/powerlevel10k

  # zinit ice pick"async.zsh" src"pure.zsh"
  # zinit light sindresorhus/pure

  zinit light mattmc3/zman

  # zinit ice wait lucid atload'_zsh_autosuggest_start'
  zinit light zsh-users/zsh-autosuggestions
  zinit light zsh-users/zsh-history-substring-search

  zinit snippet OMZ::/plugins/magic-enter
  zinit snippet OMZ::/plugins/sudo
  

  # load these at hypersonic load speeds with zsh-defer
  zinit light zdharma-continuum/fast-syntax-highlighting


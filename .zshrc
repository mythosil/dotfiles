fpath=(~/.zsh/completion $fpath)

autoload -U compinit; compinit

autoload -U promptinit; promptinit
PURE_GIT_PULL=0
prompt pure

bindkey -e
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^S' history-incremental-pattern-search-forward

autoload history-search-end
zle -N history-beginning-search-forward-end history-search-end
zle -N history-beginning-search-backward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

setopt auto_cd
setopt auto_pushd
setopt list_types
setopt noclobber
setopt nohup
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_no_store
setopt hist_reduce_blanks
setopt inc_append_history
setopt share_history
setopt hist_ignore_space
setopt interactive_comments
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history

if [ `uname -s` = 'Darwin' -a -f ~/.zsh/.zshrc.darwin ]; then
  source ~/.zsh/.zshrc.darwin
fi

if [ `uname -s` = 'Linux' -a -f ~/.zsh/.zshrc.linux ]; then
  source ~/.zsh/.zshrc.linux
fi

if [ -f ~/.zsh/.zshrc.local ]; then
  source ~/.zsh/.zshrc.local
fi

if [ -f ~/.zsh_function ]; then
  source ~/.zsh_function
fi

if [ -f ~/.zsh_alias ]; then
  source ~/.zsh_alias
fi

if [ -f ~/.zsh_abbreviation ]; then
  source ~/.zsh_abbreviation
fi

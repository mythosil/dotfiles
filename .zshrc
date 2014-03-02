fpath=(~/.zsh/completion $fpath)

autoload -U compinit
compinit

autoload -U promptinit
promptinit

bindkey -e
bindkey '^R' history-incremental-pattern-search-backward
bindkey '^S' history-incremental-pattern-search-forward

autoload history-search-end
zle -N history-beginning-search-forward-end history-search-end
zle -N history-beginning-search-backward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%b)'
zstyle ':vcs_info:*' actionformats '(%b|%a)'
precmd () {
  psvar=()
  LANG=en_US.UTF-8 vcs_info
  [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}

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

local PCOLOR=$'%{\e[1;32m%}'
local DEFAULT=$'%{\e[1;m%}'
PROMPT="$PCOLOR o(・ε・)o $DEFAULT"
PROMPT2="< | >"
RPROMPT="%1(v|%F{green}%1v%f|)[%3~]" # (git-branch)[path]

alias g='git'
alias v='vim'
alias e='emacs'
alias l='ls -FCGB'
alias ls='ls -FCGB'
alias sl='ls -FCGB'
alias la='ls -a'
alias ll='ls -l'
alias cp='cp -i'
alias mv='mv -i'
alias df='df -h'
alias which='which -a'
alias gdb='gdb -q'
alias jar='jar -J-Dfile.encoding=UTF-8'
alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'
alias clj='rlwrap -c clj'
alias mysqlstart='sudo /usr/local/mysql/support-files/mysql.server start'
alias mysqlstop='sudo /usr/local/mysql/support-files/mysql.server stop'
alias mysqlrestart='sudo /usr/local/mysql/support-files/mysql.server restart'
alias memcachedstart='memcached -d -c 1024 -m 64 -p 11211'
alias mongostart='$HOME/local/mongodb/bin/mongod --dbpath $HOME/.mongodata/'
alias vboxrestart='sudo /Library/StartupItems/VirtualBox/VirtualBox restart'

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

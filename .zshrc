# Created by newuser for 5.0.2

#-------------------------
# General Settings
#-------------------------
export EDITOR="vim"
export LANG=ja_JP.UTF-8
autoload -U compinit
compinit
setopt auto_list
setopt auto_menu

setopt print_eight_bit
autoload -Uz colors
colors
bindkey -v
#-------------------------
#history
#-------------------------
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt hist_ignore_dups
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^A" history-beginning-search-backward-end
bindkey "^F" history-beginning-search-forward-end

#-------------------------
#PROMPT
#-------------------------
#PROMPT="%{$fg[white]%}[%{$fg[green]%}%n%{$fg[white]%}@%{$fg[cyan]%}%M%{$fg[white]%}:%{$fg[yellow]%}%~%{$fg[white]%}]%# "
PROMPT="%{$fg[white]%}PWD:[%{$fg[yellow]%}%~%{$fg[white]%}]
%{$fg[white]%}[%{$fg[green]%}%n%{$fg[white]%}@%{$fg[cyan]%}%M%{$fg[white]%}]%# "
if [ ${UID} -eq 0 ]; then
PROMPT="%{$fg[white]%}PWD:[%{$fg[yellow]%}%~%{$fg[white]%}]
%{$fg[white]%}[%{$fg[red]%}%n%{$fg[white]%}@%{$fg[cyan]%}%M%{$fg[white]%}]%# "
fi
#------------------------
#alias
#^^^^^^^^^^^^^^^^^^^^^^^^
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias x11vnc='x11vnc -forever -rfbauth /home/kousokujin/.vnc/passwd'
alias edit="vim"

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# git bash completion
source ~/.git-completion.sh

alias ls='ls -FG'
alias grep='grep --color'

# Prompt
case "$TERM" in
xterm-256color)
        PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 "(%s)")\n\$ '
        ;;
*)
        PS1='\u@\h:\w\n\$ '
        ;;
esac

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
        PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
        ;;
*)
        ;;
esac

EDITOR=vi


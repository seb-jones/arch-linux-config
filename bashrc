# Set urxvt as the default terminal for i3
export TERMINAL=urxvt

# Colour Aliases
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'

# Convenience Aliases
alias ga='git add'
alias gs='git status'

# Enable git tab completion
. /usr/share/git/completion/git-completion.bash

# Custom Prompt
. /usr/share/git/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1="\n\e[1m[\u] \e[3;34m\w \e[m\e[1;33m$(__git_ps1 " (%s)")\e[m\n\e[1m\$\e[m "

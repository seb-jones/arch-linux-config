# Set urxvt as the default terminal for i3
export TERMINAL=urxvt

source "/home/seb/.config/aliases"

# Enable git tab completion
source /home/seb/.config/git-completion.bash

# Custom Prompt
BOLD="\[$(tput bold)\]"
ITALIC="\[$(tput sitm)\]"
BLUE="\[$(tput setaf 4)\]"
YELLOW="\[$(tput setaf 3)\]"
RESET="\[$(tput sgr0)\]"
GIT="\$(__git_ps1)"

source /home/seb/.config/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM=1
export PS1="\n${BOLD}[\u]${ITALIC}${BLUE} \w${RESET}${BOLD}${YELLOW}${GIT}${RESET}\n${BOLD}\$${RESET} "
export PS4="+ $LINENO: "

# ELinks homepage
export WWW_HOME='https://duckduckgo.com'

# Add Global Composer/NPM packages to PATH
PATH=$PATH:/home/seb/.config/composer/vendor/bin:/home/seb/.nvm

# FZF Bash integration
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

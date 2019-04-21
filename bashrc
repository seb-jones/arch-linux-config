# Set urxvt as the default terminal for i3
export TERMINAL=urxvt

# Colour Aliases
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias tree='tree -C'
alias less='less -R'

# Convenience Aliases
alias ga='git add'
alias gb='git branch'
alias gc='git commit -m'
alias gca='git commit -am'
alias gch='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gfo='git fetch origin'
alias gl='git log'
alias glo='git log --oneline'
alias gp='git push'
alias gpu='git pull'
alias gs='git status'
alias pa='php artisan'
alias pat='php artisan tinker'
alias pah='php artisan help'
alias pam='php artisan migrate '
alias pamfs='php artisan migrate:fresh --seed'
alias pamro='php artisan migrate:rollback'
alias pamm='php artisan make:model'
alias pammi='php artisan make:migration'
alias pamc='php artisan make:controller'
alias pams='php artisan make:seeder'
alias pamf='php artisan make:factory'
alias pads='php artisan db:seed'
alias pah='php artisan help'
alias par='php artisan relate'
alias padr='php artisan db:reseed'
alias pamcr='php artisan make:crud'
alias pal='php artisan list'
alias codal='composer dump-autoload'
alias sql='mysql -u root -p'
alias coi='composer install'
alias cou='composer update'
alias yrd='yarn run dev'
alias yw='yarn watch'
alias ni='npm install'
alias nrd='npm run dev'
alias nrw='npm run watch'
alias sysh='shutdown now'
alias sysu='systemctl suspend'
alias elinks='elinks -config-dir ~/.config/elinks'
alias mycli='mycli --myclirc ~/.config/myclirc -u root'

# Enable git tab completion
source ~/.config/git-completion.bash

# Custom Prompt
BOLD="\[$(tput bold)\]"
ITALIC="\[$(tput sitm)\]"
BLUE="\[$(tput setaf 4)\]"
YELLOW="\[$(tput setaf 3)\]"
RESET="\[$(tput sgr0)\]"
GIT="\$(__git_ps1)"

source ~/.config/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM=1
export PS1="\n${BOLD}[\u]${ITALIC}${BLUE} \w${RESET}${BOLD}${YELLOW}${GIT}${RESET}\n${BOLD}\$${RESET} "

# ELinks homepage
export WWW_HOME='https://duckduckgo.com'

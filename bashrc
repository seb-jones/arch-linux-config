# Set urxvt as the default terminal for i3
export TERMINAL=urxvt

# Colour Aliases
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'

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
alias codal='composer dump-autoload'
alias coi='composer install'
alias cou='composer update'
alias yrd='yarn run dev'
alias yw='yarn watch'
alias ni='npm install'
alias nrd='npm run dev'
alias nrw='npm run watch'
alias sysh='shutdown now'
alias sysu='systemctl suspend'

# Enable git tab completion
. /usr/share/git/completion/git-completion.bash

# Custom Prompt
#. /usr/share/git/completion/git-prompt.sh
#export GIT_PS1_SHOWDIRTYSTATE=1
#export PS1="\n\e[1m[\u] \e[3;34m\w \e[m\e[1;33m$(__git_ps1 " (%s)")\e[m\n\e[1m\$\e[m "
export PS1="\n\e[1m[\u] \e[3;34m\w \e[m\e\n\e[1m\$\e[m "

# Initialize SSH Keychain
eval $(keychain --noask --nogui --eval id_rsa)

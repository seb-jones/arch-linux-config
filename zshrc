# Colour Aliases
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias tree='tree -C'
alias less='less -R'

# Convenience Aliases
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias gca='git commit -am'
alias gch='git checkout'
alias gchd='git checkout develop'
alias gm='git merge'
alias gmd='git merge develop'
alias gd='git diff'
alias gf='git fetch'
alias gfo='git fetch origin'
alias gl='git log'
alias glo='git log --oneline'
alias gp='git push'
alias gpu='git pull'
alias gs='git status'
alias gst='git stash'
alias gstp='git stash pop'
alias gun='git checkout -- .'
alias grh='git reset HEAD'
alias pa='php artisan'
alias pas='php artisan serve'
alias pat='php artisan tinker'
alias pah='php artisan help'
alias pam='php artisan migrate '
alias pamfs='php artisan migrate:fresh --seed'
alias pamfr='php artisan migrate:fresh'
alias pamf='php artisan make:factory'
alias pamro='php artisan migrate:rollback'
alias pamm='php artisan make:model'
alias pammi='php artisan make:migration'
alias pamc='php artisan make:controller'
alias pams='php artisan make:seeder'
alias pamf='php artisan make:factory'
alias pad='php artisan dusk'
alias padm='php artisan dusk:make'
alias pamt='php artisan make:test'
alias pads='php artisan db:seed'
alias pah='php artisan help'
alias par='php artisan relate'
alias padr='php artisan db:reseed'
alias pamcr='php artisan make:crud'
alias pamco='php artisan make:command'
alias pal='php artisan list'
alias pacc='php artisan cache:clear'
alias codal='composer dump-autoload'
alias sql='mycli -u root'
alias coi='composer install'
alias cou='composer update'
alias cor='composer require'
alias cord='composer require --dev'
alias yrd='yarn run dev'
alias yw='yarn watch'
alias ni='npm install'
alias nrd='npm run dev'
alias nrh='npm run dev'
alias nrw='npm run watch'
alias sysh='shutdown now'
alias sysu='/home/seb/.config/lock.sh && systemctl suspend'
alias syre='systemctl reboot'
alias elinks='elinks -config-dir /home/seb/.config/elinks'
alias bashsrc='source /home/seb/.bashrc'
alias cls='clear'
alias unit='./vendor/bin/phpunit'
alias gur='gulp refresh'
alias scroff='xset dpms force off'
alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias la='ls -a'
alias lh='ls -lh'


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
setopt extendedglob
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/seb/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz promptinit
promptinit

setopt COMPLETE_ALIASES

setopt PROMPT_SUBST

git_prompt() {
    BRANCH=$(git symbolic-ref HEAD  2> /dev/null | grep -o -E "[^/]+$")

    if [[ -n $BRANCH ]]
    then
        if [[ -n $(git status -s 2> /dev/null) ]]
        then
            echo "%F{red}($BRANCH *)%f"
        else
            echo "($BRANCH)"
        fi
    fi
}

NEWLINE=$'\n'
PROMPT='${NEWLINE}%B[%n]%b %B%F{blue}%~%f%b $(git_prompt) ${NEWLINE}$ '

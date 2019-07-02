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
            echo "%F{yellow}($BRANCH *)%f"
        else
            echo "($BRANCH)"
        fi
    fi
}

NEWLINE=$'\n'
PROMPT='${NEWLINE}%B[%n]%b %B%F{blue}%~%f%b $(git_prompt) ${NEWLINE}$ '

source /home/seb/.config/aliases

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

setopt correct

unsetopt complete_aliases

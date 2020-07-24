HISTFILE=~/.histfile
HISTSIZE=10000000
SAVEHIST=10000000
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

setopt extendedglob
unsetopt beep
bindkey -v
bindkey '^N' autosuggest-accept

zstyle :compinstall filename '/home/seb/.zshrc'

autoload -Uz compinit
compinit

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

bindkey '^K' history-substring-search-up
bindkey '^J' history-substring-search-down

setopt correct

unsetopt complete_aliases

# Vi Mode Settings
export KEYTIMEOUT=1

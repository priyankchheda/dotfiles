function virtualenv_info() {
    if [[ -n "$VIRTUAL_ENV" ]]; then
        venv=`basename $VIRTUAL_ENV`
    else
        venv=''
    fi
    [[ -n "$venv" ]] && echo "($venv) "
}


export VIRTUAL_ENV_DISABLE_PROMPT=1

export PS1='$(virtualenv_info)\e[1;36m\W\e[m \e[1;33m$(__git_ps1 "(%s) ")\e[m$ '

if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
fi

set -o vi


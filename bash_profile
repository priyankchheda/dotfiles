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

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
    --color=fg:#4d4d4c,bg:#eeeeee,hl:#d7005f
    --color=fg+:#4d4d4c,bg+:#e8e8e8,hl+:#d7005f
    --color=info:#4271ae,prompt:#8959a8,pointer:#d7005f
    --color=marker:#4271ae,spinner:#4271ae,header:#4271ae'


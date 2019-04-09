alias ll='ls -lahG'

function virtualenv_info() {
    if [[ -n "$VIRTUAL_ENV" ]]; then
        venv=`basename $VIRTUAL_ENV`
    else
        venv=''
    fi
    [[ -n "$venv" ]] && echo "(venv:$venv) "
}


export VIRTUAL_ENV_DISABLE_PROMPT=1

# For Dark Background
export PS1='\n$(virtualenv_info)\e[0;36m[\d \T]\e[m \e[0;32m\u@\h\e[m: \w \e[1;33m$(__git_ps1 "(%s) ")\e[m\n$ '

# For Light Background
# export PS1='\n$(virtualenv_info)[\d \T] \u@\h: \w \e[1;33m$(__git_ps1 "(%s) ")\e[m\n$ '

if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

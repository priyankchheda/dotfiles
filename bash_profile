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
# export PS1='\n$(virtualenv_info)\e[0;36m[\d \T]\e[m \e[0;32m\u@\h\e[m: \w \e[1;33m$(__git_ps1 "(%s) ")\e[m\n$ '
# export PS1='\n$(virtualenv_info)\e[1;37m[\d \T]\e[m \e[1;37m\u@\h\e[m: \w \e[1;37m$(__git_ps1 "(%s) ")\e[m\n$ '

# For Light Background
# export PS1='\n$(virtualenv_info)[\d \T] \u@\h: \w \e[1;33m$(__git_ps1 "(%s) ")\e[m\n$ '
# export PS1='\n$(virtualenv_info)\e[1;30m[\d \T]\e[m \e[1;30m\u@\h\e[m: \w \e[1;30m$(__git_ps1 "(%s) ")\e[m\n$ '
export PS1='$(virtualenv_info)\e[1;36m\W\e[m \e[1;33m$(__git_ps1 "(%s) ")\e[m$ '

if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
fi

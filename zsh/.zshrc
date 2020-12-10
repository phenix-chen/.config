source ~/.config/zsh/env.zsh
source ~/.config/zsh/alias.zsh
source ~/.config/zsh/app.zsh
source ~/.config/zsh/fzf.zsh

if [ -f ~/.config/zsh/local.zsh ]; then
    source ~/.config/zsh/local.zsh
fi

if [ -z $XDG_DATA_HOME ]; then 
    export ADOTDIR=$XDG_DATA_HOME/antigen
fi

if [ -z $XDG_CACHE_HOME ]; then 
    export ANTIGEN_LOG=$XDG_CACHE_HOME/antigen
fi

source ~/.config/zsh/plugins.zsh
function auto_pipenv_shell {
    if [ ! -n "${PIPENV_ACTIVE+1}" ]; then
        if [ -f "Pipfile" ] ; then
            source "$(pipenv --venv)/bin/activate"
            # pipenv shell
        fi
    fi
}

function cd {
    builtin cd "$@"
    auto_pipenv_shell
}

auto_pipenv_shell

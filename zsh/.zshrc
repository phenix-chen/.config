# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

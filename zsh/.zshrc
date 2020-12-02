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

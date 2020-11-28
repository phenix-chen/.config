if ! [ -f ~/.antigen.zsh ]; then
    curl -L git.io/antigen > ~/.antigen.zsh
fi
source ~/.antigen.zsh

antigen use oh-my-zsh
antigen bundle command-not-found
antigen bundle pip
antigen bundle fd
antigen bundle fzf
antigen bundle osx
antigen bundle color
antigen bundle timer
antigen bundle themes
antigen bundle docker
antigen bundle docker-compose
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

# antigen theme robbyrussell
antigen theme ys
antigen apply

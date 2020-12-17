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
# antigen bundle vi-mode
antigen bundle sudo
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

# theme
# antigen theme denysdovhan/spaceship-prompt

# antigen theme robbyrussell
# antigen theme ys
# antigen theme dracula/zsh
# antigen theme romkatv/powerlevel10k
THEME=romkatv/powerlevel10k
# THEME=denysdovhan/spaceship-prompt
antigen list | grep $THEME; if [ $? -ne 0 ]; then antigen theme $THEME; fi
antigen apply

ETC=~/.myconfig/etc
BIN=~/.myconfig/bin

source ~/.config/zsh/alias.zsh
source ~/.config/zsh/plugins.zsh
source ~/.config/zsh/env.zsh
source ~/.config/zsh/app.zsh

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

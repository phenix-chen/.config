export http_proxy="http://localhost:7890"
export https_proxy="http://localhost:7890"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export HISTFILE="$XDG_DATA_HOME"/zsh/history
alias to="cd /Users/chen/Library/Mobile\ Documents/iCloud~app~cyan~taio/Documents/Editor/TodoList && nv index.md"
alias no="cd /Users/chen/Library/Mobile\ Documents/iCloud~app~cyan~taio/Documents/Editor/Notebook && nv index.md"
alias reyabai='launchctl kickstart -k "gui/${UID}/homebrew.mxcl.yabai"'
. ~/.config/zsh/zshrc.zsh
# compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION

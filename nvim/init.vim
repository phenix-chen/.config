set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
" source ~/.vimrc
source ~/.config/nvim/basic.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/function.vim
source ~/.config/nvim/md-snippets.vim


" ===
" === Dress up
" ===
set termguicolors " enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" color deus
"
"
" set shell=bash\ -i

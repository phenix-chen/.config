set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
" source ~/.vimrc
source ~/.config/nvim/basic.vim
source ~/.config/nvim/plugins.vim


" ===
" === Dress up
" ===
set termguicolors " enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" color deus

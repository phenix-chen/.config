
let has_machine_specific_file = 1
if empty(glob('~/.config/nvim/_machine_specific.vim'))
	let has_machine_specific_file = 0
	silent! exec "!cp ~/.config/nvim/default_configs/_machine_specific_default.vim ~/.config/nvim/_machine_specific.vim"
endif
source $XDG_CONFIG_HOME/nvim/_machine_specific.vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after

let &packpath = &runtimepath
" source ~/.vimrc
source ~/.config/nvim/basic.vim
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/function.vim
source ~/.config/nvim/md-snippets.vim
" source ~/.config/nvim/which-key.vim
source ~/.config/nvim/local.vim


" ===
" === Dress up
" ===
set termguicolors " enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" color deus
"
"
" set shell=bash\ -i

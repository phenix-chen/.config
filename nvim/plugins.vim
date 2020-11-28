
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'mileszs/ack.vim'
" Plug 'dense-analysis/ale'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
" Plug 'Shougo/deoplete.nvim'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'

" Status line
Plug 'theniceboy/eleline.vim'
Plug 'ojroques/vim-scrollstatus'

" Auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" TagList
Plug 'liuchengxu/vista.vim'

" theme
Plug 'ajmwagar/vim-deus'

" Debug
Plug 'puremourning/vimspector'

" Python

" Markdown
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'mzlogin/vim-markdown-toc', { 'for': ['gitignore', 'markdown', 'vim-plug'] }
Plug 'dkarter/bullets.vim'

" Editor
Plug 'pechorin/any-jump.vim'

" General Highlighter
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'RRethy/vim-illuminate'
call plug#end()



" ===
" === vim-deus
" === 
set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark    " Setting dark mode
colorscheme deus
let g:deus_termcolors=256

" ===
" === coc.nvim
" === 
let g:coc_global_extensions = [
    \ 'coc-explorer',
    \ 'coc-gitignore',
    \ 'coc-json',
    \ 'coc-prettier',
    \ 'coc-python', 
    \ 'coc-pyright', 
    \ 'coc-snippets',
    \ 'coc-vimlsp']
set hidden
set updatetime=100
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <<silent><<expr> <c-o> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" diagnostic
nnoremap <silent><nowait> <LEADER>d :CocList diagnostics<cr>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Useful commands
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

inoremap <silent><expr> <c-o> coc#refresh()
function! Show_documentation()
	call CocActionAsync('highlight')
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction
nnoremap <LEADER>h :call Show_documentation()<CR>

autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

nmap tt :CocCommand explorer<cr>

" ===
" === Leaderf
" ===
" nmap <c-p> :Leaderf file<cr>


" ===
" === Vista.vim
" ===
map <leader>v :Vista!!<cr>
map <c-t> :silent! Vista finder coc<cr>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_default_executive = 'coc'
let g:vista_fzf_preview = ['right:50%']
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
let g:scrollstatus_size = 15


" ===
" === vimspector
" ===
  nmap <leader>dd         :call vimspector#Launch()
  nmap <leader>dc         <Plug>VimspectorContinue
  nmap <leader>ds         <Plug>VimspectorStop
  nmap <leader>dr         <Plug>VimspectorRestart
  nmap <leader>dp         <Plug>VimspectorPause
  nmap <leader>db         <Plug>VimspectorToggleBreakpoint
  " nmap <leader><F9> <Plug>VimspectorToggleConditionalBreakpoint
  " nmap <leader>         <Plug>VimspectorAddFunctionBreakpoint
  " nmap <leader><F8> <Plug>VimspectorRunToCursor
  nmap <leader>du        <Plug>VimspectorStepOver
  nmap <leader>di        <Plug>VimspectorStepInto
  nmap <leader>do        <Plug>VimspectorStepOut

" ===
" === Bullets.vim
" ===
" let g:bullets_set_mappings = 0
let g:bullets_enabled_file_types = [
			\ 'markdown',
			\ 'text',
			\ 'gitcommit',
			\ 'scratch'
			\]

" ===
" === vim-illuminate
" ===
let g:Illuminate_delay = 750
hi illuminatedWord cterm=undercurl gui=undercurl

" ===
" === fzf.vim
" ===
nmap <silent> <c-p> :Files<cr>
nmap <silent> <c-g> :GFiles<cr>
" nmap <silent> <c-o> :Buffers<cr>
nmap <c-f> :Rg!<space>

set number
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4 smarttab
set autoindent
set guifont=JetBrains\ Mono\ 16

"for plugin
call plug#begin('~/.vim/plugged')

Plug 'ActivityWatch/aw-watcher-vim'
Plug 'phanviet/vim-monokai-pro'
Plug 'sickill/vim-monokai'
Plug 'SirVer/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'ianding1/leetcode.vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
"Plug 'dense-analysis/ale'
Plug 'preservim/tagbar' " Tagbar for code navigation

call plug#end()

"vim-monokai_pro plugin
colorscheme monokai_pro

"to compile cpp code
autocmd BufRead,BufNewFile *.cpp nnoremap <F5> :w<CR>:!g++ -o %:r % && ./%:r<CR>
set makeprg=g++\ -o\ %:r\ %

"leetcode.vim plugin
let g:leetcode_browser = "firefox"
let g:leetcode_solution_filetype = "cpp"

" ale default off
let g:ale_enabled = 0
set hls!

" map ctrl + p FZF
nnoremap <C-p> :FZF<CR>

" NerdTree Shortcut
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nmap <F8> :TagbarToggle<CR>

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
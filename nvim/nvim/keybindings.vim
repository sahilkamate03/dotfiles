" For Nerd Tree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

" Tag Toogle
nmap <F8> :TagbarToggle<CR>

" Auto Completion
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" map ctrl + p FZF
nnoremap <C-p> :FZF<CR>

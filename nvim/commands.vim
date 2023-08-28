"to compile cpp code
autocmd BufRead,BufNewFile *.cpp nnoremap <F5> :w<CR>:!g++ -o %:r % && ./%:r<CR>
set makeprg=g++\ -o\ %:r\ %



call plug#begin("~/.config/nvim/plugged")

Plug 'nvim-treesitter/nvim-treesitter' "syntax highlighting
Plug 'phanviet/vim-monokai-pro' "Color Scheme
Plug 'sickill/vim-monokai' "Color Scheme
Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'neoclide/coc.nvim'  " Auto Completion
Plug 'ryanoasis/vim-devicons' " Developer Icons
" Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'mg979/vim-visual-multi' " CTRL + N for multiple cursors
Plug 'jiangmiao/auto-pairs' " Auto Bracket

set encoding=UTF-8

call plug#end()

"vim-monokai_pro plugin
colorscheme monokai_pro

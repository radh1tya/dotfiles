call plug#begin()
Plug 'navarasu/onedark.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set number
set relativenumber
set cursorline
set expandtab
syntax on
filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent

colorscheme onedark

let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_section_z = airline#section#create(['linenr', 'maxlinenr'])
let g:airline#extensions#branch#enabled = 1

lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'c' },
  highlight = { enable = true },
  indent = { enable = true },
}
EOF

lua << EOF
require("ibl").setup()
EOF

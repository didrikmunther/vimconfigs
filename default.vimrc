let mapleader=" "

syntax on

set ignorecase
set smartcase
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set runtimepath^=~/.config/nvim/coc-settings.json
set undofile
set incsearch
set number
set relativenumber

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgray

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-rooter'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'morhetz/gruvbox'

call plug#end()

colorscheme gruvbox

nnoremap <leader>p :Telescope find_files<CR>
nnoremap <leader>t :Telescope buffers<CR>
nnoremap <CR> :noh<CR>

" Use K to show documentation in preview window
nnoremap <silent>K :call CocAction('doHover')<CR>
nnoremap <silent>L :call JumpDefinition()<CR>
nnoremap <leader>c :CocList diagnostics<CR>

function! JumpDefinition()
    normal! mH
    :call CocAction('jumpDefinition', 'drop')
endfunction

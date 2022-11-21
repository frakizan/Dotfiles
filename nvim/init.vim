colorscheme wombat256grf

autocmd InsertEnter * norm zz

let mapleader = " "
set clipboard=unnamedplus
set termguicolors
set number relativenumber
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set smartindent
set hidden
set nowrap
set incsearch
set scrolloff=16
set noshowmode
set cmdheight=1
set updatetime=50
set nocursorline nocursorcolumn
set splitbelow splitright
set wildmenu
set wildmode=longest:full,full

nnoremap <leader>c  :set cursorline! cursorcolumn!<CR>
nnoremap <leader>gr :%s//g<Left><Left>
nnoremap <Esc><Esc> :nohlsearch<CR>
nnoremap <leader>h  :wincmd h<CR>
nnoremap <leader>j  :wincmd j<CR>
nnoremap <leader>k  :wincmd k<CR>
nnoremap <leader>l  :wincmd l<CR>
nnoremap <leader>mk :make<CR>
nnoremap <leader>av a@author Santos Shiden Nicholas<CR>@version 0.1 <Esc>:r !date +"\%Y-\%m-\%d"<CR>i<BS><Esc>o

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup whiteSpaceRemoval
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

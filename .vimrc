if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged') 
  Plug 'junegunn/vim-easy-align' 
  Plug 'tomasr/molokai'
  Plug 'pangloss/vim-javascript' 
  Plug 'tpope/vim-surround' 
call plug#end()


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" highlight search matches
set hlsearch

" as search input changes it finds next logical match
set incsearch

" ignores case
set ignorecase

" if uppercase used it will look specifically
set smartcase

" Lovely linenumbers
set nu


:let mapleader = "\<Space>"
nnoremap <Leader>e :Explore<CR>

nmap <Leader><CR> :nohlsearch<cr>

set backspace=indent,eol,start

" put vi in background and return to terminal
:nnoremap <Leader>8 <C-z>

" switch between the last two files
nnoremap <leader><leader> <c-^>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Highlight Entire Line
:nnoremap <S-l> <S-v>

" Create new tab, move b/w tabs
:nnoremap <Leader>t :tabedit<CR><bar>:Explore<CR> 
:nnoremap <Leader>0 gt 
:nnoremap <Leader>9 gT 

" Configs to make Molokai look great
set background=dark
let g:molokai_original=1
let g:rehash256=1
set t_Co=256
colorscheme molokai

" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

" Highlight active column
set cuc cul"
set tabstop=2
set shiftwidth=2
set expandtab
" highlight the current line
set cursorline


" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

map <leader>l :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

" ctrl-p stuff
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<Leader>p'

" cycle between files
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
" add this line to preset conceal: set conceallevel=1
map <leader>con :exec &conceallevel ? "set conceallevel=0" : "set conceallevel=1"<CR>

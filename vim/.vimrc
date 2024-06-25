if has("gui_running")
    set gfn=Menlo-Regular:h18
    set lines=35 columns=90
    winp 140 20
    colorscheme desert
    set guioptions-=r
    set guioptions+=a
    set guioptions+=k
    set transparency=10  " set it at .gvimrc
    set imactivatekey=C-space
  	"inoremap <ESC> <ESC>:set iminsert=0<CR>
endif

set shortmess=atl   " set it at .gvimrc
syntax enable
set nocp
set mouse=a
map <ScrollWheelUp> <C-y>
map <ScrollWheelDown> <C-e>
set nu
set ru
set rnu
set cul
"set cuc
set ts=4
set sw=4
set sts=4
set et
"set list
set backspace=indent,eol,start
set hls
set ic
set scs    " smartcase
set is    " incsearch
set sm    " showmatch
"set nosmd    " showmode
set sc    " showcmd
set ai
set fen    " foldenable
set fdm=indent
set foldlevelstart=99
set wrap
set whichwrap=b,s,<,>,[,]
set wildmenu
"set ls=2
"set acd
set showtabline=1
set clipboard^=unnamed,unnamedplus
set autoread

au CursorHold,CursorHoldI * checktime

autocmd BufWritePost $MYVIMRC source $MYVIMRC
"let g:Powerline_colorscheme='solarized256'

"autocmd FileType help wincmd L
"autocmd InsertLeave * :silent !/opt/homebrew/bin/im-select com.apple.keylayout.ABC
filetype on
filetype plugin on
filetype indent on
autocmd VimEnter,BufNewFile,BufRead * if &ft == '' && @% == '' | set ft=markdown | endif
autocmd FileType make setlocal noet
autocmd FileType python setlocal et ts=4 sts=4 sw=4
autocmd FileType lisp setlocal ts=2 sts=2 sw=2

nnoremap <A-Up> :m-2<CR>
nnoremap <A-Down> :m+<CR>
inoremap <A-Up> <Esc>:m-2<CR>
inoremap <A-Down> <Esc>:m+<CR>

let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 100
"let g:netrw_browse_split = 4
let g:netrw_altv=1
"let g:netrw_chgwin = 2
let g:netrw_keepdir = 0
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

augroup netrw
    au!
    "autocmd VimEnter * if argc() == 0 | 20 Lexplore | endif
    autocmd VimEnter * wincmd l
    autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif
augroup end

call plug#begin()
"Plug 'vim-airline/vim-airline'
Plug 'preservim/vim-markdown'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'udalov/kotlin-vim'
call plug#end()

hi CocMenuSel ctermfg=white ctermbg=DarkCyan

let g:coc_node_path = '/opt/homebrew/bin/node'
let g:coc_global_extensions = [
            \'coc-yank',
            \'coc-pairs',
            \'coc-json',
            \'coc-css',
            \'coc-html',
            \'coc-tsserver',
            \'coc-yaml',
            \'coc-lists',
            \'coc-snippets',
            \'coc-pyright',
            \'coc-clangd',
            \'coc-prettier',
            \'coc-xml',
            \'coc-syntax',
            \'coc-git',
            \'coc-marketplace',
            \'coc-highlight',
            \'coc-sh',
            \'coc-rust-analyzer',
            \'coc-metals',
            \]

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

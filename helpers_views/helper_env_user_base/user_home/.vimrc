"*********************************
"       Charlie Customize - Load plugin
"*********************************
"------------Load pathogen(VIM plugin management)-------------
execute pathogen#infect()

"------------Plugin: nerdtree------------
map <C-n> :NERDTreeToggle<CR>
map <C-l> :tabn<CR>
map <C-k> :tabp<CR>

"------------Plugin: gitgutter (Useless)------------
"set updatetime=250
"let g:gitgutter_override_sign_column_highlight = 0
"let g:gitgutter_signs = 0

"------------Plugin: vim-airline------------
set laststatus=2
let g:airline_theme = 'dark'
"let g:airline_theme = 'powerlineish'

" Enable tabline theme
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#tab_nr_type = 1

" Re-define airline symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" --- work with plugin tpope/vim-obsession ----
if !exists('g:airline#extensions#obsession#indicator_text')
  let g:airline#extensions#obsession#indicator_text = '---Obsession---'
endif

"------------Plugin: vim-obsession------------
" This plugin will only deal with session like : layout, which file is opened , and in tab
"   This will not effect whethere your file is saved or not!
"   So no worry if Session.vim exists, just see Session.vim file as xxx.swp.
"   Session.vim is not a big deal file
" This one seems not really useful as below
nnoremap <C-u> :Obsess<CR>

" Just use this one as Obsession toggling
nnoremap <C-i> :Obsess!<CR>

"------------Plugin: tabular------------
map t= :Tabularize /=<CR>
map t, :Tabularize /,<CR>
map t: :Tabularize /:<CR>
map t\| :Tabularize /\|<CR>
map t<SPACE>  :Tabularize /\S\+<CR>
map tt  :Tabularize /\t<CR>


"*********************************
"       Charlie Customize
"*********************************

"------------VIM Colorscheme------------
colorscheme lucid
"colorscheme slate

"------------VIM Setting------------
filetype plugin indent on
syntax on
set nocompatible
set t_Co=256
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set cursorline
set cursorcolumn
set showtabline=2
"set mouse=a

"pastetoggle
nnoremap <F10> :set invpaste paste?<CR>
set pastetoggle=<F10>
set showmode

" enable true color
if has("termguicolors")
    " fix bug for vim
    set t_8f=^[[38;2;%lu;%lu;%lum
    set t_8b=^[[48;2;%lu;%lu;%lum

    " enable true color
    set termguicolors
endif

" Prevent Vim Clearing Screen on Exit
"set t_ti= t_te=

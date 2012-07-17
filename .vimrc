set nocompatible

call pathogen#infect()

let mapleader=","

" Files
set nobackup
set tags=./tags;${HOME},./TAGS,tags,TAGS
let tagfiles=substitute(glob("~/.vim/tags/*"), "\n", ",", "g")
execute "set tags+=" . tagfiles
"set tags += /home/dan/.vim/tags

" Vim 'chrome'
set title
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)
set ruler
set showmode
set wildmenu
set wildmode=longest,full
"set showtabline=2
set laststatus=2
" Disable the bell completely
set visualbell t_vb=

" vimdiff
set diffopt+=vertical

" Folding
set foldmethod=manual
set foldlevel=1
set foldenable

function AutoFold()
    set foldmethod=indent
    set foldlevel=1
    set foldenable
endfunction

function ManualFold()
    set foldmethod=manual
    set nofoldenable
endfunction

autocmd BufNewFile,BufRead * set foldmethod=manual
autocmd BufNewFile,BufRead *.xml,*.html,*.xhtml set foldmethod=indent

" Colors!
set t_Co=256
highlight Folded ctermfg=7 ctermbg=0
highlight Pmenu ctermbg=238

" Syntax highlighting
filetype plugin on
syntax on
autocmd FileType plaintex set filetype=tex

" Search
set nohlsearch
nnoremap <leader><space> :nohl<CR>
set ignorecase
set smartcase
" Use 'very magic' patterns in search
nnoremap / /\v
vnoremap / /\v

" Editing
set cpoptions+=$

" Indenting
filetype indent on
set autoindent
set smartindent
autocmd FileType c,cpp set cindent
autocmd FileType Makefile set noexpandtab

set expandtab
set tabstop=4
set shiftwidth=4
set shiftround

" Formatting
set formatoptions=crqn
autocmd FileType tex,latex,plaintex set formatoptions+=t
set textwidth=80
"autocmd FileType tex,latex,plaintex set textwidth=80

" Scrolling
set nowrap
set scrolloff=3
set sidescrolloff=5
set sidescroll=1
set listchars=eol:$,tab:<-,trail:-,extends:>,precedes:<

" Enable mouse support
set mouse=a

" Custom commands
" Remap section movement commands to stop at end-of-line braces as well
map [[ ?{<CR>w99[{
map ][ /}<CR>b99]}
map ]] j0[[%/{<CR>
map [] k$][%?}<CR>
" Fold a function (from the previous '{' to the next '}')
nnoremap <leader>ff VaBzf
" Write file as super-user
cmap w!! w !sudo tee % >/dev/null

" Plugins
"let g:Powerline_symbols='fancy'
"let g:SuperTabDefaultCompletionType="<c-x><c-o>"


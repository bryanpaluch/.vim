

" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#incubate()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on

" Change the mapleader fro \ to ,
let mapleader=","


"NerdTree

map <leader>n :execute 'NERDTreeToggle ' . getcwd()<CR>
nmap <F3> :NERDTreeToggle<CR>
" Move around panes 
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
set mousefocus

" Tabs
set tabstop=2
set shiftwidth=2
set autoindent
set number
set showmatch
set smartcase
set expandtab

" Color Schema

syntax enable

let g:kolor_italic=1                    " Enable italic. Default: 1
let g:kolor_bold=1                      " Enable bold. Default: 1
let g:kolor_underlined=0                " Enable underline for 'Underlined'. Default: 0
let g:kolor_alternative_matchparen=1    " Gray 'MatchParen' color. Default: 0

set term=xterm-256color
colorscheme kolor

" Omni Completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set completeopt+=longest

" Over ride 
set hidden " Don't let me close buffers
cmap w!! w !sudo tee % >/dev/null

"Go
" au FileType go au BufWritePre <buffer> Fmt " Auto gofmt on write
let g:SuperTabDefaultCompletionType = "context" " Use gocode 

"Colors

"Syntastic Only use jshint
let g:syntastic_javascript_checkers=['jshint']
" ~/.vimrc
" " Make Vim recognize XTerm escape sequences for Page and Arrow
" " keys combined with modifiers such as Shift, Control, and Alt.
" " See http://www.reddit.com/r/vim/comments/1a29vk/_/c8tze8p
"
if &term =~ '256color'
  set t_ut=
endif

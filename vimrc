"======================================================================
" source: https://github.com/doomgeek/doomdots/blob/master/vimrc
"======================================================================

filetype plugin on  " look for file types

"==[ Encryption]=======================================================

set cryptmethod=blowfish  " use new, secure encryption

"==[ Disable backup files ]============================================

set nobackup    " don't write ~ files
set noswapfile  " don't write .swp files

"==[ Search ]==========================================================

set hlsearch   " highlight matches
set incsearch  " search while typing
set smartcase  " ignore case while search phrase is lowercase

"==[ Whitespace ]======================================================

set autoindent    " copy indent from current line when starting new line
set shiftwidth=4  " number of spaces to use for each step of indent
set expandtab     " write spaces rather than tab chars
set smarttab      " keep shift working w/o tab chars enabled
set tabstop=4     " number of spaces that a tab char counts for

autocmd BufWritePre *.* :%s/\s\+$//e  " Remove trailing ws on save

"==[ Encoding ]========================================================

set encoding=utf-8
set fileencoding=utf-8

"==[ Commands ]========================================================

nmap \l :setlocal number!<cr>
nmap \q :nohlsearch<cr>

"==[ Appearance ]======================================================

syntax enable     " turn on syntax highlighting
set laststatus=2  " make statusline always visible
set number        " show line numbers

set statusline=%F%m%r%h%w\ %{&ff}\ %y\ %L\ %03l,%03v
"set statusline=%F%m%r%h%w\ %{&ff}\ %y\ %L\ %03l,%03v\ %{fugitive#statusline()}
highlight ErrorMsg ctermbg=red guibg=red
highlight ColorColumn ctermbg=magenta
highlight SpellBad ctermfg=000 ctermbg=003 cterm=none
call matchadd('ColorColumn', '\%80v', 100)

"==[ Override defaults per Filetype ]==================================

autocmd Filetype text set tw=72
autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0
autocmd FileType calendar set noexpandtab shiftwidth=4 softtabstop=0

"==[ Load Vim scripts with pathogen ]==================================

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

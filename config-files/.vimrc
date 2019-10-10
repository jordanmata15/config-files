execute pathogen#infect()
syntax on

"-----------Theme settings-----------
colorscheme dracula

"enable 256 color mode
set t_Co=256 

"set background to none
highlight Normal ctermbg=None 

"_________End Theme Settings_________

" Sets tabs vs spaces
set tabstop=2
set expandtab
if has("autocmd")
  autocmd FileType make set noexpandtab
endif

set number
set backspace=indent,eol,start
set autoindent
set ruler
set noerrorbells
set title
set history=1000
highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

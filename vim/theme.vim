" Enable 256 colors in vim
set t_Co=256

" Disable Background Color Erase (BCE) so that color schemes
" work properly when Vim is used inside tmux and GNU screen
if &term =~ '256color'
  set t_ut=
endif

" Set to 'dark' to use colors that look good on dark background
set background=dark

" Set colorscheme
colorscheme monokai

" Set background of colorscheme to transparent
hi Normal ctermbg=none

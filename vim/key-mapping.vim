" Allow cursor keys in insert mode
if !has('nvim')
  set esckeys
endif

" Allow backspace in insert mode
set backspace=indent,eol,start

" Time to wait after ESC (default causes an annoying delay)
set timeoutlen=250

" Run currently edited python file by pressing F9
autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

" Switch search-highlighting off until next search
nnoremap <silent> <Leader>/ :nohlsearch<CR>

" Quickly move current line above or below
nnoremap <C-k><C-k> :<C-u>execute 'move -1-'. v:count1<CR>
nnoremap <C-j><C-j> :<C-u>execute 'move +'. v:count1<CR>

" Quickly insert empty line above or below
nmap oo o<Esc>k
nmap OO O<Esc>j

" Increase number below digit by one - Need to remap because Ctrl-a is used
" as the tmux prefix
:nnoremap <A-a> <C-a>

"" Tabs {{{
  nnoremap <silent> <Tab><Tab> :tabnew<CR>
  nnoremap <silent> <Tab>q :tabclose<CR>
  nnoremap <silent> <Tab>o :tabonly<CR>
  nnoremap <silent> <Tab>s :tabs<CR>
  nnoremap <silent> <Tab>^ :tabfirst<CR>
  nnoremap <silent> <Tab>$ :tablast<CR>
  nnoremap <silent> <Tab>k :tabfirst<CR>
  nnoremap <silent> <Tab>j :tablast<CR>
  nnoremap <silent> <Tab>l :tabnext<CR>
  nnoremap <silent> <Tab>h :tabprevious<CR>
  nnoremap <silent> <Tab>n :tabnext<CR>
  nnoremap <silent> <Tab>p :tabprevious<CR>
  nnoremap <silent> <Tab><Right> :tabnext<CR>
  nnoremap <silent> <Tab><Left> :tabprevious<CR>
  nnoremap <silent> <Tab>1 :tabnext 1<CR>
  nnoremap <silent> <Tab>2 :tabnext 2<CR>
  nnoremap <silent> <Tab>3 :tabnext 3<CR>
  nnoremap <silent> <Tab>4 :tabnext 4<CR>
  nnoremap <silent> <Tab>5 :tabnext 5<CR>
  nnoremap <silent> <Tab>6 :tabnext 6<CR>
  nnoremap <silent> <Tab>7 :tabnext 7<CR>
  nnoremap <silent> <Tab>8 :tabnext 8<CR>
  nnoremap <silent> <Tab>9 :tabnext 9<CR>
"" }}}

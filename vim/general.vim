" Use path $VIM_HOME, even on non-unix machine
set runtimepath+=$VIM_HOME
set runtimepath+=$VIM_HOME

" Enhance command-line completion to ZSH-like behavior
set wildmenu
set wildmode=full
" Ignore when expanding wildcards
set wildignore=*.swp,*.swo,*.class,*.pyc
" Number of things to remember in history
set history=256

"" Split Windows {{{
  " Open new split panes to right and bottom
  set splitbelow
  set splitright
"" }}}

"" Formatting {{{
  " Set the default tabstop
  set tabstop=4
  set softtabstop=4
  " Set the default shift width for indents
  set shiftwidth=4
  " Make tabs into spaces (set by tabstop)
  set expandtab
  " Smarter tab levels
  set smarttab
  " Copy indent from current line when starting a new line
  set autoindent
  " Do smart autoindenting when starting a new line
  set smartindent
"" }}}

"" Backup & Swap {{{
  " Disable backup and swap files
  set nobackup
  set nowritebackup
  set noswapfile

  " Maintain undo history between sessions
  set undofile
  " Set maximum number of changes that can be undone
  set undolevels=100
"" }}}

"" Grep {{{
  if executable('rg')
    " Use rg(ripgrep)
    set grepprg=rg\ --no-heading\ --vimgrep
  elseif executable('pt')
    " Use pt(The Platinum Searcher)
    set grepprg=pt\ --nocolor\ --nogroup\ --column
  elseif executable('ag')
    " Use ag(The Silver Searcher)
    set grepprg=ag\ --vimgrep
  elseif executable('ack')
    set grepprg=ack\ -H\ --nocolor\ --nogroup
  endif
  " Set foramt for vimgrep
  set grepformat=%f:%l:%c:%m
"" }}}

"" Auto Commands {{{
  if has('autocmd')
    " Auto reload vimrc
    augroup reload_vimrc
      autocmd!
      autocmd BufWritePost $MY_VIM_RC,*.vim
        \ source $MY_VIM_RC |
        \ echo 'Reloaded VIM Configurations'
    augroup END

    " Restore cursor position when opening file
    augroup restore_cursor
      autocmd!
      autocmd BufReadPost *
        \ if line("'\"") > 1 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
    augroup END
  endif
"" }}}

"" Python {{{
  " Figure out the system Python for Neovim.
  " Setting this makes startup faster. Also useful for
  " working with virtualenvs. See :help provider.txt
  if exists("$VIRTUAL_ENV")
    let g:python3_host_prog=substitute(system('which -a python3 | head -n2 | tail -n1'), '\n', '', 'g')
  else
    let g:python3_host_prog=substitute(system('which python3'), '\n', '', 'g')
  endif

  " Disable Python 2 support:
  let g:loaded_python_provider = 1
"" }}}

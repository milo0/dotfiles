"" Plugin: Vim Better Whitespace {{{
  " All trailing whitespace characters to be highlighted
  Plug 'ntpeters/vim-better-whitespace'
  let g:better_whitespace_enabled=1
  " Disable this plugin for specific file types
  let g:better_whitespace_filetypes_blacklist=[
  \ 'diff', 'gitcommit', 'unite', 'qf', 'help', 'nerdtree'
  \ ]
  " Strip whitespaces only in modified lines
  let g:strip_only_modified_lines=1
  " Strip all trailing whitespace everytime we save the file
  let g:strip_whitespace_on_save=1
"" }}}

"" Plugin: Easy Align {{{
  " Easy alignment of code blocks along specified columns.
  " Example usage: select block, <return>col_no<space>
  Plug 'junegunn/vim-easy-align'

  " Easy align interactive
  vnoremap <silent> <Enter> :EasyAlign<cr>
"" }}}

"" Plugin: Auto Pairs {{{
  Plug 'jiangmiao/auto-pairs'
  " Shortcut for fast wrapping the word
  let g:AutoPairsShortcutFastWrap='<C-e>'
  " Enable FlyMode
  let g:AutoPairsFlyMode=1
  " Insert the key at the Fly Mode jumped postion
  let g:AutoPairsShortcutBackInsert='<C-b>'
"" }}}

"" Plugin: Vim Surround {{{
  " All about surroundings: parenthless, brackets, quotes, XML tags and more
  Plug 'tpope/vim-surround'
"" }}}

"" Plugin: Abolish {{{
  " Easily search for, substitute, and abbreviate multiple variants of a word
  Plug 'tpope/tpope-vim-abolish'
"" }}}

"" Plugin: Rainbow Parentheses Improved {{{
  " Helps you read complex code by showing diff level of parentheses in diff
  " color
  Plug 'luochen1990/rainbow'
  let g:rainbow_active = 1
"" }}}

"" Plugin: Ansible Vim {{{
  " Syntax highlighting for Ansible's common filetypes
  Plug 'pearofducks/ansible-vim'
"" }}}

"" Plugin: Vim Signify {{{
  " Indicate added, modified and removed lines based on data of VCS
  Plug 'mhinz/vim-signify'
"" }}}

"" Plugin: Vim Fugitive {{{
  " The best Git wrapper
  Plug 'tpope/vim-fugitive'
  " Key mappings for convenience
  nnoremap <Leader>gd :Gvdiff<CR>
  nnoremap <Leader>gD :Gvdiff HEAD<CR>
  nnoremap <Leader>gs :Gstatus<CR>:20wincmd +<CR>
  nnoremap <Leader>gw :Gwrite<CR>
  nnoremap <Leader>gb :Gblame -w<CR>:vertical resize 10<CR>
  nnoremap <Leader>gci :Gcommit --verbose<CR>
"" }}}

"" Plugin: gitv {{{
  " gitv is a repository viewer similar to gitk.
  " It allows you to view commits, diffstats, inline diffs, and file or folder
  " specific history, and more. It allows you to perform operations on the
  " commit tree interactively, such as merges, cherry picks, reversions,
  " resets, deletions, checkouts, bisections, and rebase operations.
  Plug 'gregsexton/gitv'
"" }}}

"" Plugin: Gundo {{{
  " Make browsing Vim's powerful undo tree less painful
  Plug 'sjl/gundo.vim', { 'on': 'GundoToggle' }
  " Map GundoToggle to <F12>
  nnoremap <silent> <F12> :GundoToggle<CR>
  " Set the horizontal width of Gundo graph
  let g:gundo_width=40
  " Force the preview window below current windows
  let g:gundo_preview_bottom=1
  " Set 1 to open the right side instead of the left
  let g:gundo_right=0
  " Disable Gundo entirely if machine not support python
  if v:version < '703' || !has('python')
    let g:gundo_disable=1
  endif
  " Rendering diff automatically with cursor move
  let g:gundo_auto_preview=1
"" }}}

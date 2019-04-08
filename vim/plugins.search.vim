"" Plugin: CtrlP {{{
  " Full path fuzzy file, buffer, mru, tag finder for Vim
  Plug 'ctrlpvim/ctrlp.vim'
  " Change default mapping
  let g:ctrlp_map='<c-p>'
  " Change default command
  let g:ctrlp_cmd='CtrlP'
"" }}}

"" Plugin: Easymotion {{{
  " Provides a much simpler way to use motions in Vim
  Plug 'easymotion/vim-easymotion'
"" }}}

"" Plugin: NERDTree {{{
  " Explore filesystem with Vim
  Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeTabsToggle'] }
  " Ignore some extensions
  let NERDTreeIgnore=['.o$','.pyc$']
  " Show hidden files
  let NERDTreeShowHidden=1
  " Automatically open NERDTree when vim start up with no files
  " autocmd StdinReadPre * let s:std_in=1
  " autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
  " Close vim if the only window left open is a NERDTree
  autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree')
  \ && b:NERDTree.isTabTree()) | q | endif
"" }}}

"" Plugin: NERDTree Git Plugin {{{
  " A plugin of NERDTree showing git status flags
  Plug 'Xuyuanp/nerdtree-git-plugin'
  " Use this variable to change symbols
  let g:NERDTreeIndicatorMapCustom = {
  \ 'Modified'  : '*',
  \ 'Staged'    : '✚',
  \ 'Untracked' : '✭',
  \ 'Renamed'   : '➜',
  \ 'Unmerged'  : '═',
  \ 'Deleted'   : '✖',
  \ 'Dirty'     : '✗',
  \ 'Clean'     : '✔︎',
  \ 'Unknown'   : '?'
  \ }
"" }}}

"" Plugin: NERDTree Tabs {{{
  " NERDTree and tabs together in Vim
  Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle' }
  " Map NERDTreeToggle to <F10>
  nnoremap <silent> <F10> :NERDTreeTabsToggle<CR>
"" }}}

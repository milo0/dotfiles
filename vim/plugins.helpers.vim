"" Plugin: Comfortable Motion {{{
  " Brings physics-based smooth scrolling to the Vim
  " This plugin seems to only work with NeoVim
  if has('nvim')
    Plug 'yuttie/comfortable-motion.vim'
    " Prevent the plugin from defining default key mappings
    " let g:comfortable_motion_no_default_key_mappings=1
    " Specify friction coeffecient value
    let g:comfortable_motion_friction=60.0
    " Specify air drag coeffecient value
    let g:comfortable_motion_air_drag=2.0
  endif
"" }}}

"" Plugin: Vim Slash {{{
  " Provides a set of mappings for enhancing in-buffer search experience
  " Automatically clears search highlight when cursor is moved
  " Improved start-search (visual-mode, highlighting without moving)
  Plug 'junegunn/vim-slash'
"" }}}

"" Plugin: Repeat.vim {{{
  " Enable repeating supported plugin maps with `.`
  Plug 'tpope/vim-repeat'
"" }}}

"" Plugin: Vim QF {{{
  " Small collection of settings, commands and mappings put together to make
  " working with the location/quickfix list/window smoother
  Plug 'romainl/vim-qf'
  " Enable Ack style mapping only in location/quickfix windows
  " s - open entry in a new horizontal window
  " v - open entry in a new vertical window
  " t - open entry in a new tab
  " o - open entry and come back
  " O - open entry and close the location/quickfix window
  " p - open entry in a preview window
  let g:qf_mapping_ack_style=1
  " Open the quickfix window at the bottom of the screen
  let g:qf_window_bottom=0
  " Open the location window at the bottom of the screen
  let g:qf_loclist_window_bottom=0
  " Open the quickfix window automatically if there are any errors
  let g:qf_auto_open_quickfix=1
  " Open the location window automatically if there are any locations
  let g:qf_auto_open_loclist=1
"" }}}

"" Vim Tmux Navigator {{{
  " Seamlessly navigate between vim splits and tmux panes.

  Plug 'christoomey/vim-tmux-navigator'
  noremap <C-f> :VtrSendLinesToRunner<cr>

  " vim:ft=vim
"" }}}

"" Vim Tmux Runner {{{
  " Connect Vim and tmux to allow running lines & commands.

  Plug 'christoomey/vim-tmux-runner'
  nnoremap <leader>vo :VtrOpenRunner<cr>
  nnoremap <leader>va :VtrAttachToPane<cr>
  nnoremap <leader>fr :VtrFocusRunner<cr>

  nnoremap <leader>q :VtrSendCommandToRunner q<cr>

  " vim:ft=vim
"" }}}

if exists('g:autoloaded_phpfmt') || &compatible
  finish
endif
let g:autoloaded_phpfmt = 1

if !exists('g:phpfmt_debug')
  let g:phpfmt_debug = 0
endif

if !exists('g:phpfmt_formatters')
  let g:phpfmt_formatters = ['php-cs-fixer', 'phpcbf']
endif

if !exists('g:phpfmt_formatter_cmds')
  let g:phpfmt_formatter_cmds = {}
endif

let s:phpfmt_default_formatter_cmds = {
  \   'php-cs-fixer': 'php-cs-fixer fix',
  \   'phpcbf':       'phpcbf',
  \ }

function! phpfmt#fmt#autoformat() abort
  if get(g:, 'phpfmt_autosave', 1)
    call phpfmt#fmt#format()
  endif
endfunction

function! phpfmt#fmt#format() abort
  " save cursor position and many other things
  let l:curw = winsaveview()

  for l:fmt in g:phpfmt_formatters
    let l:cmd = phpfmt#fmt#cmd(l:fmt).' '.expand('%')

    if g:phpfmt_debug
      echo l:cmd
    endif

    let l:cmd_out = system(l:cmd)

    if v:shell_error
      echoerr v:shell_error.': '.l:cmd_out
    else
      " remove undo point caused via BufWritePost
      try | silent undojoin | catch | endtry
    endif

    if g:phpfmt_debug && !v:shell_error
      echo l:cmd_out
    endif
  endfor

  " reload the buffer
  silent edit!

  " restore our cursor/windows positions
  call winrestview(l:curw)
endfunction

function! phpfmt#fmt#cmd(fmt) abort
  let l:formatter_cmds = extend(s:phpfmt_default_formatter_cmds, g:phpfmt_formatter_cmds)
  return l:formatter_cmds[a:fmt]
endfunction

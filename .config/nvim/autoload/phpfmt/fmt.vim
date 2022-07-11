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

function! s:on_stdout(job_id, data, event) abort
  if g:phpfmt_debug
    echo a:data
  endif
  try | silent undojoin | catch | endtry
endfunction

function! s:on_stderr(job_id, data, event) abort
  let l:line = join(a:data, ' ')
  if g:phpfmt_debug && l:line != ''
    echoerr l:line
  endif
endfunction

function! s:on_exit(job_id, data, event) abort
  silent edit! | execute 'normal! g`"'
endfunction

function! phpfmt#fmt#autoformat() abort
  if get(g:, 'phpfmt_autosave', 1)
    call phpfmt#fmt#format()
  endif
endfunction

let s:phpfmt_default_formatter_cmds = {
      \ 'php-cs-fixer': 'php-cs-fixer fix',
      \ 'phpcbf': 'phpcbf',
      \ }

let s:phpfmt_job_opts = {
      \ 'on_stdout': function('s:on_stdout'),
      \ 'on_stderr': function('s:on_stderr'),
      \ 'on_exit': function('s:on_exit'),
      \ }

function! phpfmt#fmt#format() abort
  let l:cmds = []

  for l:fmt in g:phpfmt_formatters
    call add(l:cmds, phpfmt#fmt#cmd(l:fmt).' '.expand('%'))
  endfor

  let l:cmd = ['bash', '-c', join(l:cmds, ' && ')]
  if g:phpfmt_debug
    echo l:cmd
  endif

  call jobstart(l:cmd, s:phpfmt_job_opts)
endfunction

function! phpfmt#fmt#cmd(fmt) abort
  let l:formatter_cmds = extend(s:phpfmt_default_formatter_cmds, g:phpfmt_formatter_cmds)
  return l:formatter_cmds[a:fmt]
endfunction

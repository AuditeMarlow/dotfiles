function s:PhpFmt()
  try
    let l:php_cs_fixer_out=call('system', ['docker-compose exec -T workspace php-cs-fixer fix '.expand('%')])
    let l:phpcbf_out=call('system', ['docker-compose exec -T workspace phpcbf '.expand('%')])
  catch
    echo v:exception
  endtry
  e!
  echo l:php_cs_fixer_out."\n".l:phpcbf_out
  return [l:php_cs_fixer_out, l:phpcbf_out, v:shell_error]
endfunction

nnoremap <plug>PhpFmt :<c-u>call <sid>PhpFmt()<cr>

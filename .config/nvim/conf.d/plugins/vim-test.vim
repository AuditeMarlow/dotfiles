nmap <silent> <leader>tt :TestNearest<CR>
nmap <silent> <leader>TT :TestFile<CR>
nmap <silent> <leader>ta :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

function! FocusBackStrategy(cmd) abort
  let term_position = get(g:, 'test#neovim#term_position', 'botright')
  execute term_position . ' new'
  call termopen(a:cmd)
  wincmd p " switch back to last window
endfunction

let test#custom_strategies = {'focus_back': function('FocusBackStrategy')}
let test#neovim#term_position = 'vert'
let test#php#phpunit#executable = 'docker-compose exec -T workspace phpunit'
let test#strategy = 'focus_back'

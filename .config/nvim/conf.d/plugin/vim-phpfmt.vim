let g:phpfmt_autosave = 1
let g:phpfmt_formatter_cmds = {
  \   'php-cs-fixer': 'docker run --rm -i -v $(pwd):$(pwd) -w $(pwd) cytopia/php-cs-fixer fix',
  \   'phpcbf': 'docker run --rm -i -v $(pwd):$(pwd) -w $(pwd) phpqa/phpcs phpcbf',
  \ }

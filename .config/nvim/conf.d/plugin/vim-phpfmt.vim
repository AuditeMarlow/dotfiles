let g:phpfmt_autosave = 1
let g:phpfmt_formatter_cmds = {
  \   'php-cs-fixer': 'docker run --rm -i -v $(pwd):$(pwd) -w $(pwd) repo01.g360.network/docker/lighthouse/workspace:7.4 php-cs-fixer fix',
  \   'phpcbf': 'docker run --rm -i -v $(pwd):$(pwd) -w $(pwd) repo01.g360.network/docker/lighthouse/workspace:7.4 phpcbf',
  \ }

" Load configuration
for f in glob('~/.config/nvim/conf.d/*.vim', 0, 1)
  execute 'source' f
endfor

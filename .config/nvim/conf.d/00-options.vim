" 'autoindent' 'ai' 'noautoindent' 'noai'
"
" Copy indent from current line when starting a new line (typing <CR> in
" Insert mode or when using the "o" or "O" command). If you do not type
" anything on the new line except <BS> or CTRL-D and then type <Esc>, CTRL-O
" or <CR>, the indent is deleted again.
set autoindent

" 'colorcolumn' 'cc'
"
" 'colorcolumn' is a comma separated list of screen columns that are
" highlighted with ColorColumn |hl-ColorColumn|. Useful to align text.
set colorcolumn=80

" 'cursorcolumn' 'cuc' 'nocursorcolumn' 'nocuc'
"
" Highlight the screen column of the cursor with CursorColumn
" |hl-CursorColumn|. Useful to align text.
set cursorcolumn

" 'cursorline' 'cul' 'nocursorline' 'nocul'
"
" Highlight the screen line of the cursor with CursorLine |hl-CursorLine|.
" Useful to easily spot the cursor.
set cursorline

" 'equalalways' 'ea' 'noequalalways' 'noea'
"
" When on, all the windows are automatically made the same size after
" splitting or closing a window.
set equalalways

" 'expandtab' 'et' 'noexpandtab' 'noet'
"
" In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
" Spaces are used in indents with the '>' and '<' commands and when
" 'autoindent' is on. To insert a real tab when 'expandtab' is on, use
" CTRL-V<Tab>.
set expandtab

" 'hidden' 'hid' 'nohidden' 'nohid'
"
" When off a buffer is unloaded when it is |abandon|ed. When on a buffer
" becomes hidden when it is |abandon|ed.
"
" Effectively this means I can open a new file while having unwritten changes
" to the file in the current buffer.
set hidden

" 'hlsearch' 'hls' 'nohlsearch' 'nohls'
"
" When there is a previous search pattern, highlight all its matches.
set hlsearch

" 'ignorecase' 'ic' 'noignorecase' 'noic'
"
" If the 'ignorecase' option is on, the case of normal letters is ignored.
set ignorecase

" 'lazyredraw' 'lz' 'nolazyredraw' 'nolz'
"
" When this option is set, the screen will not be redrawn while executing
" macros, registers and other commands that have not been typed.
set lazyredraw

" 'linebreak' 'lbr' 'nolinebreak' 'nolbr'
"
" If on, Vim will wrap long lines at a character in 'breakat' rather than at
" the last character that fits on the screen.
set linebreak

" 'showmode' 'smd' 'noshowmode' 'nosmd'
"
" If in Insert, Replace or Visual mode put a message on the last line.
set noshowmode

" 'swapfile' 'swf' 'noswapfile' 'noswf'
"
" Use a swapfile for the buffer. This option can be reset when a swapfile is
" not wanted for a specific buffer. For example, with confidential information
" that even root must not be able to access.
"	Careful: All text will be in memory:
"   - Don't use this for big files.
"   - Recovery will be impossible!
set noswapfile

" 'path' 'pa' E343 E345 E347 E854
"
" This is a list of directories which will be searched when using the |gf|,
" [f, ]f, ^Wf, |:find|, |:sfind|, |:tabfind| and other commands, provided that
" the file being searched for has a relative path (not starting with "/", "./"
" or "../"). The directories in the 'path' option may be relative or absolute.
set path+=**

" 'scrolloff' 'so'
"
" Minimal number of screen lines to keep above and below the cursor. This will
" make some context visible around where you are working.
set scrolloff=4

" 'shiftwidth' 'sw'
"
" Number of spaces to use for each step of (auto)indent.
set shiftwidth=4

" 'shortmess' 'shm'
"
" This option helps to avoid all the |hit-enter| prompts caused by file
" messages, for example with CTRL-G, and to avoid some other messages.
set shortmess+=c

" 'signcolumn' 'scl'
"
" When and how to draw the signcolumn.
set signcolumn=auto

" 'smartcase' 'scs' 'nosmartcase' 'noscs'
"
" Override the 'ignorecase' option if the search pattern contains upper case
" characters. Only used when the search pattern is typed and 'ignorecase'
" option is on.
set smartcase

" 'softtabstop' 'sts'
"
" Number of spaces that a <Tab> counts for while performing editing
" operations, like inserting a <Tab> or using <BS>. It "feels" like <Tab>s are
" being inserted, while in fact a mix of spaces and <Tab>s is used.
set softtabstop=4

" 'splitbelow' 'sb' 'nosplitbelow' 'nosb'
"
" When on, splitting a window will put the new window below the current one.
set splitbelow

" 'splitright' 'spr' 'nosplitright' 'nospr'
"
" When on, splitting a window will put the new window right of the current one.
set splitright

" 'tabstop' 'ts'
"
" Number of spaces that a <Tab> in the file counts for.
set tabstop=8

" 'tags' 'tag' E433
"
" Filenames for the tag command, separated by spaces or commas.
set tags+=,./.tags,.tags

" 'termguicolors' 'tgc'
"
" Enables 24-bit RGB color in the |TUI|.
set termguicolors

" 'undodir' 'udir' E5003
"
" List of directory names for undo files, separated with commas.
set undodir=$HOME/.config/nvim/undo

" 'undofile' 'noundofile' 'udf' 'noudf'
"
" When on, Vim automatically saves undo history to an undo file when writing a
" buffer to a file, and restores undo history from the same file on buffer
" read.
set undofile

" 'updatetime' 'ut'
"
"	If this many milliseconds nothing is typed the swap file will be written to
"	disk (see |crash-recovery|). Also used for the |CursorHold| autocommand
"	event.
set updatetime=300

" 'wildmenu' 'wmnu' 'nowildmenu' 'nowmnu'
"
" When 'wildmenu' is on, command-line completion operates in an enhanced mode.
" On pressing 'wildchar' (usually <Tab>) to invoke completion, the possible
" matches are shown just above the command line, with the first match
" highlighted (overwriting the status line, if there is one).
set wildmenu

" 'wrap' 'nowrap'
"
" When on, lines longer than the width of the window will wrap and displaying
" continues on the next line. When off lines will not wrap and only part of
" long lines will be displayed. When the cursor is moved to a part that is not
" shown, the screen will scroll horizontally.
set wrap

" Automatically resize vim splits when window is resized.
autocmd VimResized * wincmd =

" Enable filetype detection.
filetype plugin indent on

" This command switches on syntax highlighting.
syntax enable

" Highlight trailing spaces.
match ErrorMsg '\s\+$'

" Auto remove trailing spaces on save for specific filetypes.
autocmd FileType php,blade,javascript,vue,css autocmd BufWritePre <buffer> %s/\s\+$//e

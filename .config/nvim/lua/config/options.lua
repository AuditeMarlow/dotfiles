-- 'autoindent' 'ai' 'noautoindent' 'noai'
--
-- Copy indent from current line when starting a new line (typing <CR> in
-- Insert mode or when using the --o-- or --O-- command). If you do not type
-- anything on the new line except <BS> or CTRL-D and then type <Esc>, CTRL-O
-- or <CR>, the indent is deleted again.
vim.opt.autoindent = true

-- 'clipboard' 'cb'        string  (default "")
--                         global
--         This option is a list of comma-separated names.
--         These names are recognized:
--
--                                                 *clipboard-unnamed*
--         unnamed         When included, Vim will use the clipboard register "*"
--                         for all yank, delete, change and put operations which
--                         would normally go to the unnamed register.  When a
--                         register is explicitly specified, it will always be
--                         used regardless of whether "unnamed" is in 'clipboard'
--                         or not.  The clipboard register can always be
--                         explicitly accessed using the "* notation.  Also see
--                         |clipboard|.
--
--                                                 *clipboard-unnamedplus*
--         unnamedplus     A variant of the "unnamed" flag which uses the
--                         clipboard register "+" (|quoteplus|) instead of
--                         register "*" for all yank, delete, change and put
--                         operations which would normally go to the unnamed
--                         register.  When "unnamed" is also included to the
--                         option, yank and delete operations (but not put)
--                         will additionally copy the text into register
--                         "*". See |clipboard|.
vim.opt.clipboard:append("unnamedplus")

-- 'colorcolumn' 'cc'
--
-- 'colorcolumn' is a comma separated list of screen columns that are
-- highlighted with ColorColumn |hl-ColorColumn|. Useful to align text.
vim.opt.colorcolumn = "80"

-- 'cursorcolumn' 'cuc' 'nocursorcolumn' 'nocuc'
--
-- Highlight the screen column of the cursor with CursorColumn
-- |hl-CursorColumn|. Useful to align text.
vim.opt.cursorcolumn = true

-- 'cursorline' 'cul' 'nocursorline' 'nocul'
--
-- Highlight the screen line of the cursor with CursorLine |hl-CursorLine|.
-- Useful to easily spot the cursor.
vim.opt.cursorline = true

-- 'equalalways' 'ea' 'noequalalways' 'noea'
--
-- When on, all the windows are automatically made the same size after
-- splitting or closing a window.
vim.opt.equalalways = true

-- 'expandtab' 'et' 'noexpandtab' 'noet'
--
-- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
-- Spaces are used in indents with the '>' and '<' commands and when
-- 'autoindent' is on. To insert a real tab when 'expandtab' is on, use
-- CTRL-V<Tab>.
vim.opt.expandtab = true

-- 'hidden' 'hid' 'nohidden' 'nohid'
--
-- When off a buffer is unloaded when it is |abandon|ed. When on a buffer
-- becomes hidden when it is |abandon|ed.
--
-- Effectively this means I can open a new file while having unwritten changes
-- to the file in the current buffer.
vim.opt.hidden = true

-- 'hlsearch' 'hls' 'nohlsearch' 'nohls'
--
-- When there is a previous search pattern, highlight all its matches.
vim.opt.hlsearch = true

-- 'ignorecase' 'ic' 'noignorecase' 'noic'
--
-- If the 'ignorecase' option is on, the case of normal letters is ignored.
vim.opt.ignorecase = true

-- 'lazyredraw' 'lz' 'nolazyredraw' 'nolz'
--
-- When this option is set, the screen will not be redrawn while executing
-- macros, registers and other commands that have not been typed.
vim.opt.lazyredraw = true

-- 'linebreak' 'lbr' 'nolinebreak' 'nolbr'
--
-- If on, Vim will wrap long lines at a character in 'breakat' rather than at
-- the last character that fits on the screen.
vim.opt.linebreak = true

-- 'showmode' 'smd' 'noshowmode' 'nosmd'
--
-- If in Insert, Replace or Visual mode put a message on the last line.
vim.opt.showmode = false

-- 'swapfile' 'swf' 'noswapfile' 'noswf'
--
-- Use a swapfile for the buffer. This option can be reset when a swapfile is
-- not wanted for a specific buffer. For example, with confidential information
-- that even root must not be able to access.
--	Careful: All text will be in memory:
--   - Don't use this for big files.
--   - Recovery will be impossible!
vim.opt.swapfile = false

-- 'path' 'pa' E343 E345 E347 E854
--
-- This is a list of directories which will be searched when using the |gf|,
-- [f, ]f, ^Wf, |:find|, |:sfind|, |:tabfind| and other commands, provided that
-- the file being searched for has a relative path (not starting with "/", "./"
-- or "../"). The directories in the 'path' option may be relative or absolute.
vim.opt.path:append("**")

-- 'scrolloff' 'so'
--
-- Minimal number of screen lines to keep above and below the cursor. This will
-- make some context visible around where you are working.
vim.opt.scrolloff = 4

-- 'shiftwidth' 'sw'
--
-- Number of spaces to use for each step of (auto)indent.
vim.opt.shiftwidth = 4

-- 'shortmess' 'shm'
--
-- This option helps to avoid all the |hit-enter| prompts caused by file
-- messages, for example with CTRL-G, and to avoid some other messages.
vim.opt.shortmess:append("c")

-- 'signcolumn' 'scl'
--
-- When and how to draw the signcolumn.
vim.opt.signcolumn = "auto"

-- 'smartcase' 'scs' 'nosmartcase' 'noscs'
--
-- Override the 'ignorecase' option if the search pattern contains upper case
-- characters. Only used when the search pattern is typed and 'ignorecase'
-- option is on.
vim.opt.smartcase = true

-- 'softtabstop' 'sts'
--
-- Number of spaces that a <Tab> counts for while performing editing
-- operations, like inserting a <Tab> or using <BS>. It "feels" like <Tab>s are
-- being inserted, while in fact a mix of spaces and <Tab>s is used.
vim.opt.softtabstop = 4

-- 'splitbelow' 'sb' 'nosplitbelow' 'nosb'
--
-- When on, splitting a window will put the new window below the current one.
vim.opt.splitbelow = true

-- 'splitright' 'spr' 'nosplitright' 'nospr'
--
-- When on, splitting a window will put the new window right of the current one.
vim.opt.splitright = true

-- 'tabstop' 'ts'
--
-- Number of spaces that a <Tab> in the file counts for.
vim.opt.tabstop = 8

-- 'tags' 'tag' E433
--
-- Filenames for the tag command, separated by spaces or commas.
vim.opt.tags:append(",./.tags,.tags")

-- 'termguicolors' 'tgc'
--
-- Enables 24-bit RGB color in the |TUI|.
vim.opt.termguicolors = true

-- 'undodir' 'udir' E5003
--
-- List of directory names for undo files, separated with commas.
vim.opt.undodir = vim.fn.expand("$HOME/.config/nvim/undo")

-- 'undofile' 'noundofile' 'udf' 'noudf'
--
-- When on, Vim automatically saves undo history to an undo file when writing a
-- buffer to a file, and restores undo history from the same file on buffer
-- read.
vim.opt.undofile = true

-- 'updatetime' 'ut'
--
--	If this many milliseconds nothing is typed the swap file will be written to
--	disk (see |crash-recovery|). Also used for the |CursorHold| autocommand
--	event.
vim.opt.updatetime = 300

-- 'wildmenu' 'wmnu' 'nowildmenu' 'nowmnu'
--
-- When 'wildmenu' is on, command-line completion operates in an enhanced mode.
-- On pressing 'wildchar' (usually <Tab>) to invoke completion, the possible
-- matches are shown just above the command line, with the first match
-- highlighted (overwriting the status line, if there is one).
vim.opt.wildmenu = true

-- 'wrap' 'nowrap'
--
-- When on, lines longer than the width of the window will wrap and displaying
-- continues on the next line. When off lines will not wrap and only part of
-- long lines will be displayed. When the cursor is moved to a part that is not
-- shown, the screen will scroll horizontally.
vim.opt.wrap = true

-- Automatically resize vim splits when window is resized.
vim.api.nvim_create_autocmd("VimResized", {
    pattern = "*",
    command = "wincmd =",
})

-- Highlight trailing spaces.
vim.fn.matchadd("ErrorMsg", "\\s\\+$")

-- Automatically remove trailing spaces on save for specific filetypes.
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.php", "*.blade.php", "*.js", "*.vue", "*.css" },
  command = [[%s/\s\+$//e]],
})

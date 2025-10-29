return {
    "morhetz/gruvbox",
    lazy = false,
    config = function()
        vim.g.gruvbox_contrast_dark = "hard"
        vim.cmd([[colorscheme gruvbox]])
        vim.cmd([[hi Search cterm=NONE ctermfg=NONE ctermbg=239 gui=NONE guifg=NONE guibg=#504945]])
    end,
}

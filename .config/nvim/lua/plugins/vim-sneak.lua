vim.g["sneak#label"] = true

return {
    "justinmk/vim-sneak",
    config = function()
        vim.keymap.set("n", "f", "<plug>Sneak_f")
        vim.keymap.set("n", "F", "<Plug>Sneak_F")
        vim.keymap.set("n", "t", "<Plug>Sneak_t")
        vim.keymap.set("n", "T", "<Plug>Sneak_T")
    end,
}

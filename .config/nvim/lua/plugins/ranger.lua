return {
    "rafaqz/ranger.vim",
    config = function()
        vim.keymap.set("n", "<leader>rr", ":RangerEdit<cr>")
        vim.keymap.set("n", "<leader>rv", ":RangerVSplit<cr>")
        vim.keymap.set("n", "<leader>rs", ":RangerSplit<cr>")
        vim.keymap.set("n", "<leader>rt", ":RangerTab<cr>")
        vim.keymap.set("n", "<leader>ri", ":RangerInsert<cr>")
        vim.keymap.set("n", "<leader>ra", ":RangerAppend<cr>")
        vim.keymap.set("n", "<leader>rc", ":set operatorfunc=RangerChangeOperator<cr>g@")
    end,
}

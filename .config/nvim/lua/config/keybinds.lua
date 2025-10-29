vim.keymap.set("n", "<leader>ev", ":Files ~/.config/nvim<cr>", {
    desc = "Open Neovim configuration files",
})
vim.keymap.set("n", "<leader>init", ":so ~/.config/nvim/init.lua<cr>", {
    desc = "Source init.lua",
})

vim.keymap.set("n", "<leader>bd", ":bufdo bd!<cr>", {
    desc = "Close all buffers",
    silent = true,
})

vim.keymap.set("n", "<leader>ln", ":lnext<cr>", {
    desc = "Next item in the location list",
})
vim.keymap.set("n", "<leader>lp", ":lprev<cr>", {
    desc = "Previous item in the location list",
})

vim.keymap.set("n", "term", ":vsplit<cr>:terminal<cr>i", {
    desc = "Open a terminal in a split window",
})

vim.keymap.set("n", "<space>", ":nohlsearch<bar>:echo<cr>", {
    desc = "Turn off highlighting and clear message",
    silent = true,
})

vim.keymap.set("n", "<leader>tws", ":%s/\\s\\+$//e<cr>", {
    desc = "Trim whitespace",
})

vim.keymap.set("t", "<c-o>", "<c-\\><c-n>", {
    desc = "^o to enter normal mode in terminal split",
})

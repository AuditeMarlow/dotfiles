local M = {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-treesitter/nvim-treesitter",
            build = ":TSUpdate",
            config = function()
                require("nvim-treesitter.configs").setup({
                    ensure_installed = {
                        "lua",
                        "markdown",
                        "markdown_inline",
                        "yaml",
                    }
                })
            end
        },
    },
    opts = {},
}

vim.keymap.set({"n", "v"}, "<c-a>", "<cmd>CodeCompanionActions<cr>")
vim.keymap.set({"n", "v"}, "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>")
vim.keymap.set("v", "<leader>ca", "<cmd>CodeCompanionChat Add<cr>")

-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd([[cab cc CodeCompanion]])

return M

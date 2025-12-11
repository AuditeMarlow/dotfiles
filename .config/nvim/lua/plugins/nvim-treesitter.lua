return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "yaml",
            }
        })
    end,
}

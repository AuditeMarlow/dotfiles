return {
    "junegunn/fzf.vim",
    dependencies = {
        {
            "junegunn/fzf",
            dir = "~/.local/share/fzf",
            build = "./install --all",
        },
    },
    config = function()
        -- Function to prompt for a search pattern and run :Rg
        local function search()
            local pattern = vim.fn.input("Search pattern: ")
            if pattern ~= "" then
                vim.cmd("Rg " .. pattern)
            end
        end

        vim.keymap.set("n", "<c-p>", ":Files<cr>")
        vim.keymap.set("n", "<c-f>", search, { desc = "Search with Rg" })
        vim.keymap.set("n", "<leader>bb", ":Buffers<cr>")
        vim.keymap.set("n", "<c-x>p", ":Files ./vendor<cr>")
        vim.keymap.set("n", "<c-x>n", ":Files ./node_modules<cr>")
    end,
}

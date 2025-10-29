return {
    "vim-test/vim-test",
    config = function()
        -- Custom vim-test strategy
        local function focus_back_strategy(cmd)
            local term_position = vim.g["test#neovim#term_position"] or "botright"
            -- Open a new terminal split at the specified position
            vim.cmd(term_position .. " new")
            -- Run the command in the terminal
            vim.fn.termopen(cmd)
            -- Return focus to the previous window
            vim.cmd("wincmd p")
        end

        -- Set the custom strategy
        vim.g["test#custom_strategies"] = { focus_back = focus_back_strategy }

        -- Other vim-test options
        vim.g["test#neovim#term_position"] = "horizontal rightbelow"
        vim.g["test#php#phpunit#executable"] = "docker compose exec -T workspace vendor/bin/phpunit"
        vim.g["test#strategy"] = "focus_back"

        vim.keymap.set("n", "<leader>tt", ":TestNearest<cr>", {silent = true})
        vim.keymap.set("n", "<leader>TT", ":TestFile<cr>", {silent = true})
        vim.keymap.set("n", "<leader>ta", ":TestSuite<cr>", {silent = true})
        vim.keymap.set("n", "<leader>tl", ":TestLast<cr>", {silent = true})
        vim.keymap.set("n", "<leader>tv", ":TestVisit<cr>", {silent = true})
    end,
}

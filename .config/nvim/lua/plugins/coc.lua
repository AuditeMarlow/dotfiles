local M = { "neoclide/coc.nvim", branch = "release" }

M.config = function()
    -- Automatically install these extensions.
    vim.g.coc_global_extensions = {
        "coc-go",
        "coc-json",
        "coc-lua",
        "coc-phpactor",
        "coc-pyright",
        "coc-tsserver",
        "coc-vetur",
        "coc-yaml",
    }

    -- Use <c-space> to trigger completion.
    vim.keymap.set("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

    -- Use `[g` and `]g` to navigate diagnostics
    vim.keymap.set("n", "[g", "<plug>(coc-diagnostic-prev)", {silent = true})
    vim.keymap.set("n", "]g", "<plug>(coc-diagnostic-next)", {silent = true})

    -- GoTo code navigation.
    vim.keymap.set("n", "gd", "<plug>(coc-definition)", {silent = true})
    vim.keymap.set("n", "gy", "<plug>(coc-type-definition)", {silent = true})
    vim.keymap.set("n", "gi", "<plug>(coc-implementation)", {silent = true})
    vim.keymap.set("n", "gr", "<plug>(coc-references)", {silent = true})

    local function show_documentation()
        if vim.fn.CocAction("hasProvider", "hover") == 1 then
            vim.fn.CocActionAsync("doHover")
        else
            vim.api.nvim_feedkeys("K", "n", false)
        end
    end

    -- Use K to show documentation in preview window.
    vim.keymap.set("n", "K", show_documentation, {
        silent = true, desc = "Show documentation with Coc",
    })

    -- Highlight the symbol and its references when holding the cursor.
    -- autocmd CursorHold * silent call CocActionAsync('highlight')
    vim.api.nvim_create_autocmd("CursorHold", {
        pattern = "*",
        callback = function()
            vim.fn.CocActionAsync("highlight")
        end
    })

    -- Symbol renaming.
    vim.keymap.set("n", "<leader>rn", "<plug>(coc-rename)")

    -- Formatting selected code.
    vim.keymap.set("x", "<leader>f", "<plug>(coc-format-selected)")
    vim.keymap.set("n", "<leader>f", "<plug>(coc-format-selected)")
end

return M

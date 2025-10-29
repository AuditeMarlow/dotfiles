require("utils.ftsettings").tabs4()

-- Define :A command (alternate file switch)
vim.api.nvim_create_user_command("A", function(opts)
  vim.fn["go#alternate#Switch"](opts.bang and 1 or 0, "edit")
end, { bang = true, desc = "Switch between Go source and test files" })

-- Keymaps for vim-go actions
vim.keymap.set("n", "<leader>b", "<Plug>(go-build)", { silent = true })
vim.keymap.set("n", "<leader>c", "<Plug>(go-coverage)", { silent = true })
vim.keymap.set("n", "<leader>run", "<Plug>(go-run)", { silent = true })
vim.keymap.set("n", "<leader>rn", "<Plug>(go-rename)", { silent = true })
vim.keymap.set("n", "<leader>tt", "<Plug>(go-test)", { silent = true })

-- vim-go settings
vim.g.go_auto_sameids = 1
vim.g.go_auto_type_info = 1
-- vim.g.go_fmt_command = "goimports"
-- vim.g.go_fmt_fail_silently = 1
vim.g.go_highlight_types = 1
vim.g.go_highlight_fields = 1
vim.g.go_highlight_functions = 1
vim.g.go_highlight_function_calls = 1
vim.g.go_highlight_operators = 1
vim.g.go_highlight_extra_types = 1
vim.g.go_highlight_build_constraints = 1
vim.g.go_list_type = "locationlist"
vim.g.go_metalinter_autosave = 1

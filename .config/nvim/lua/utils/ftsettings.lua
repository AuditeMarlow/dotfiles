local M = {}

function M.set_space_indent_2()
vim.bo.tabstop=2
vim.bo.shiftwidth=2
vim.bo.softtabstop=2
vim.bo.expandtab = true
end

function M.set_space_indent_4()
vim.bo.tabstop=4
vim.bo.shiftwidth=4
vim.bo.softtabstop=4
vim.bo.expandtab = true
end

function M.set_tab_indent_4()
vim.bo.tabstop=4
vim.bo.shiftwidth=4
vim.bo.softtabstop=4
vim.bo.expandtab = false
end

M.spaces2 = M.set_space_indent_2
M.spaces4 = M.set_space_indent_4
M.tabs4 = M.set_tab_indent_4

return M

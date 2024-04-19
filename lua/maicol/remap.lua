vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

-- Diagnostic
vim.diagnostic.config({
	update_in_insert = true,
})
vim.keymap.set("n", "[d", function()
	vim.diagnostic.goto_next()
end)
vim.keymap.set("n", "]d", function()
	vim.diagnostic.goto_prev()
end)

-- Move line in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- define leader key
vim.g.mapleader = " "

-- remaps
vim.keymap.set("n", "<leader>nt", vim.cmd.NvimTreeToggle)

vim.keymap.set("n", "<leader>la", vim.cmd.Lazy)

local tele_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", tele_builtin.find_files, {})
vim.keymap.set("n", "<leader>sg", tele_builtin.git_files, {})
vim.keymap.set("n", "<leader>st", function()
	tele_builtin.grep_string({ search = vim.fn.input("[grep] Enter search term: ") });
end)


vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle, {})

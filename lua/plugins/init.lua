local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("plugins.nvim-tree"),
	require("plugins.telescope"),
	require("plugins.treesitter"),
	require("plugins.onedark"),
	require("plugins.undotree"),
	require("plugins.dressing-nvim"),
	require("plugins.nvim-cmp"),
	require("plugins.sentiment"),
	require("plugins.nvim-autopairs"),
	require("plugins.mason"),
	require("plugins.lsp-config"),
})

vim.keymap.set("n", "<leader>la", vim.cmd.Lazy)

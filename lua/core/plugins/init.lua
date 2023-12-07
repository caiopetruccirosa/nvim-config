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
	require("core.plugins.nvim-tree"),
	require("core.plugins.telescope"),
	require("core.plugins.treesitter"),
	require("core.plugins.vimtex"),
	require("core.plugins.onedark"),
	require("core.plugins.undotree"),
})

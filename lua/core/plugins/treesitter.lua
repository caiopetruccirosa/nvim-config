-- treesitter for syntax highlighting
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		-- set termguicolors to enable highlight groups
		vim.opt.termguicolors = true

		-- tree sitter
		require'nvim-treesitter.configs'.setup {
			ensure_installed = { 
				"c", 
				"lua", 
				"vim", 
				"vimdoc", 
				"query", 
				"rust",
				"cpp",
				"go",
				"json",
				"latex",
				"markdown",
				"markdown_inline",
			}, -- a list of parser names
			sync_install = false, -- install parsers synchronously (only applied to `ensure_installed`)
			highlight = { enable = true },
		}

	end
}

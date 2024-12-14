-- Hybrid numbering
vim.wo.number = true
vim.wo.relativenumber = true

-- Insert 4 spaces for a tab
vim.o.tabstop = 4 

-- Change the number of space characters inserted for indentation
vim.o.shiftwidth = 4 

-- Converts tabs to spaces
vim.o.expandtab = true

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- turn off wrap
vim.opt.wrap = false

-- allows neovim to access the system clipboard
vim.opt.clipboard = "unnamedplus" 

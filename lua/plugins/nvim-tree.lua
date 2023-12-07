-- nvim-tree for file exploring
return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        -- disable netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup {}

        -- remaps
        vim.keymap.set("n", "<leader>nt", vim.cmd.NvimTreeToggle)
    end,
}

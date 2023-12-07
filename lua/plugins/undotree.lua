-- undotree
return { 
    "mbbill/undotree",
    config = function()
        -- remaps
        vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle, {})
    end        
}

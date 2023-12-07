-- telescope for file searching
return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        { 'nvim-telescope/telescope-fzf-native.nvim', build='make' },
    },
    config = function()
        local telescope = require('telescope')
        local actions = require('telescope.actions')

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ['<C-k>'] = actions.move_selection_previous, -- move to prev result,

                        ['<C-j>'] = actions.move_selection_next, -- move to next result,
                        ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist, -- send to quick fix list and open it
                    }
                }
            }
        })

        telescope.load_extension("fzf")

        -- remaps
        --
        vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Fuzzy find files in cwd' })
        vim.keymap.set('n', '<leader>fg', '<cmd>Telescope git_files<cr>', { desc = 'Fuzzy find files tracked by git in cwd' })
        vim.keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<cr>', { desc = 'Find string in cwd' })
        vim.keymap.set('n', '<leader>fc', '<cmd>Telescope grep_string<cr>', { desc = 'Find string under cursor in cwd' })
    end,
}

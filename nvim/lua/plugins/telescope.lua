-- _____    _                                
--|_   _|__| | ___  ___  ___ ___  _ __   ___ 
--  | |/ _ \ |/ _ \/ __|/ __/ _ \| '_ \ / _ \
--  | |  __/ |  __/\__ \ (_| (_) | |_) |  __/
--  |_|\___|_|\___||___/\___\___/| .__/ \___|
--                               |_|         
return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup {
            defaults = {
                initial_mode="insert",
            },
            pickers={
                find_files ={
                    initial_mode = "normal"
                }
            }
        }
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end
}

--  ___  _ _ 
-- / _ \(_) |
--| | | | | |
--| |_| | | |
-- \___/|_|_|
--           
return {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require('oil').setup {
            columns = {
                "icon",
                "permissions",
                "size",
                "mtime",
            },
            float = {
                open_by_default = true
            },
            view_options={ show_hidden=true },
        }
        vim.keymap.set("n", "<Leader>e",require("oil").toggle_float, { desc = "Open parent directory" })
        vim.treesitter.language.register('markdown', 'vimwiki')
    end
}

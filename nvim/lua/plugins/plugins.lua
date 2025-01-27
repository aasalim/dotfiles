-- ____  _             _           
--|  _ \| |_   _  __ _(_)_ __  ___ 
--| |_) | | | | |/ _` | | '_ \/ __|
--|  __/| | |_| | (_| | | | | \__ \
--|_|   |_|\__,_|\__, |_|_| |_|___/
--               |___/             
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },

            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end

vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
    {"nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function () 
            local configs = require("nvim-treesitter.configs")
            configs.setup({
                ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "heex", "javascript", "html" },
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },  
            })
        end
    },
    {'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {'stevearc/oil.nvim',
        ---@module 'oil'
        ---@type oil.SetupOpts
        opts = {
            columns = {
                "icon",
                "permissions",
                "size",
                "mtime",
            },
            float = {
                open_by_default = true
            }
        },
        -- Optional dependencies
       -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
         dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
        -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
        lazy = false,
    },
    {"folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },

    {"vimwiki/vimwiki",
        init = function() 
            vim.g.vimwiki_list = {
                {
                    path = '~/vimwiki',
                    syntax = 'markdown',
                    ext = '.md',
                }
            }
        end,
    }
})
vim.cmd[[colorscheme tokyonight]]
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

vim.keymap.set("n", "<Leader>-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

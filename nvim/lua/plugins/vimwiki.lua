return {
    -- The plugin location on GitHub
    "vimwiki/vimwiki",
    enabled=true,
    -- The keys that trigger the plugin

    -- The configuration for the plugin
    init = function()
        vim.g.vimwiki_list = {
            {
                -- Here will be the path for your wiki
                path = "~/vimwiki/",
                -- The syntax for the wiki
                syntax = "markdown",
                ext = "md",
            },
        }
        vim.g.vimwiki_global_ext = 0
        --    vim.g.vimwiki_ext2syntax = { }
    end,
    config = function()
        -- Function to create floating diary window

        vim.g.vimwiki_global_ext=0
        local function open_diary_float()

            -- Window dimensions (80% of editor size)
            local width = math.floor(vim.o.columns * 0.8)
            local height = math.floor(vim.o.lines * 0.8)


            -- Create floating window with new buffer
            local buf = vim.api.nvim_create_buf(false, true)
            local win = vim.api.nvim_open_win(buf, true, {
                relative = 'editor',
                width = width,
                height = height,

                col = (vim.o.columns - width) / 2,
                row = (vim.o.lines - height) / 2 - 1,
                style = 'minimal',
                border = 'rounded',
            })

            -- Open diary in the floating window
            vim.cmd('VimwikiMakeDiaryNote')
        end

        -- Set keymap (normal mode)

        vim.keymap.set('n', '<leader>wd', open_diary_float, {
            desc = 'Open Vimwiki diary in floating window'
        })
    end

}

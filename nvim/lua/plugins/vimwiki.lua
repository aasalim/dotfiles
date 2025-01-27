return {
    "vimwiki/vimwiki",
    init = function() 
        vim.g.vimwiki_list = {
            {
                path = '~/vimwiki',
                syntax = 'markdown',
                ext = '.md',
            }
        }
    end,
    config = function()
        -- Function to create floating diary window

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

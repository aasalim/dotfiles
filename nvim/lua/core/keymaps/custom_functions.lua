--  ____          _                  
-- / ___|   _ ___| |_ ___  _ __ ___  
--| |  | | | / __| __/ _ \| '_ ` _ \ 
--| |__| |_| \__ \ || (_) | | | | | |
-- \____\__,_|___/\__\___/|_| |_| |_|
--                                   
-- _____                 _   _                 
--|  ___|   _ _ __   ___| |_(_) ___  _ __  ___ 
--| |_ | | | | '_ \ / __| __| |/ _ \| '_ \/ __|
--|  _|| |_| | | | | (__| |_| | (_) | | | \__ \
--|_|   \__,_|_| |_|\___|\__|_|\___/|_| |_|___/
--                                             
function prompt_figlet()
    -- Get user input with prompts
    local user_input = vim.fn.input('Text: ')
    local first_char = vim.fn.input('First Character: ')

    -- Build the command string with proper escaping
    local cmd = string.format(
        "read !figlet '%s' | awk '{print \"%s\" $0}'",
        user_input:gsub("'", "'\\''"),  -- Escape single quotes in input
        first_char:gsub('"', '\\"')     -- Escape double quotes in first char
    )

    -- Execute the Vim command
    vim.cmd(cmd)
end
vim.keymap.set("n", "<Leader>fig", function()
    -- Get user input with prompts
    local user_input = vim.fn.input('Text: ')
    local first_char = vim.fn.input('First Character: ')

    -- Build the command string with proper escaping
    local cmd = string.format(
        "read !figlet '%s' | awk '{print \"%s\" $0}'",
        user_input:gsub("'", "'\\''"),  -- Escape single quotes in input
        first_char:gsub('"', '\\"')     -- Escape double quotes in first char
    )

    -- Execute the Vim command
    vim.cmd(cmd)
end,{noremap = true})


-- Insert C Guard
vim.keymap.set('n', '<Leader>~', function()
    local filename = vim.fn.expand('%:t')             -- Get filename with extension
    local guard = filename:gsub('%.', '_'):upper()    -- Process into guard macro


    -- Insert lines at appropriate positions
    vim.fn.append(0, {'#ifndef ' .. guard})
    vim.fn.append(1, {'#define ' .. guard})

    vim.fn.append('$', {'#endif /* ' .. guard .. ' */'})
end, { noremap = true })


vim.keymap.set("n", "<leader>ra", ":source %<CR>")

-- Map <Leader>diary to call WikiDiaryTemplate
vim.api.nvim_set_keymap('n', '<Leader>diary', ':lua WikiDiaryTemplate()<CR>', { noremap = true, silent = true })

-- Function to insert a diary template
function WikiDiaryTemplate()
  local template = {
    '# ' .. os.date("%Y-%m-%d"),
    '',
    '## TODO',
    '* [ ] ',
    '',
    '## NOTES',
    '- ',
  }

  -- Replace the current line with the template
  vim.api.nvim_buf_set_lines(0, vim.fn.line('.') - 1, vim.fn.line('.'), false, template)
end


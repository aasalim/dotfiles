--__        ___           _               
--\ \      / (_)_ __   __| | _____      __
-- \ \ /\ / /| | '_ \ / _` |/ _ \ \ /\ / /
--  \ V  V / | | | | | (_| | (_) \ V  V / 
--   \_/\_/  |_|_| |_|\__,_|\___/ \_/\_/  
--                                        
-- _   _             _             _   _             
--| \ | | __ ___   _(_) __ _  __ _| |_(_) ___  _ __  
--|  \| |/ _` \ \ / / |/ _` |/ _` | __| |/ _ \| '_ \ 
--| |\  | (_| |\ V /| | (_| | (_| | |_| | (_) | | | |
--|_| \_|\__,_| \_/ |_|\__, |\__,_|\__|_|\___/|_| |_|
--                     |___/                         
vim.keymap.set("n", "<Leader>v",  ":vsplit<CR><C-w>w :enew<CR>")
vim.keymap.set("n", "<Leader>h",  ":split<CR><C-w>w :enew<CR>")
vim.keymap.set("n", "<C-h>"    ,  "<C-w>h")
vim.keymap.set("n", "<C-j>"    ,  "<C-w>j")
vim.keymap.set("n", "<C-k>"    ,  "<C-w>k")
vim.keymap.set("n", "<C-l>"    ,  "<C-w>l")
vim.keymap.set("n", "<C-Left>" ,  ":vertical resize +3<CR>")
vim.keymap.set("n", "<C-Right>",  ":vertical resize -3<CR>")
vim.keymap.set("n", "<C-Up>"   ,  ":horizontal resize +3<CR>")
vim.keymap.set("n", "<C-Down>" ,  ":horizontal resize -3<CR>")

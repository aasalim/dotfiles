-- _____     _       _   _             _             _   _             
--|_   _|_ _| |__   | \ | | __ ___   _(_) __ _  __ _| |_(_) ___  _ __  
--  | |/ _` | '_ \  |  \| |/ _` \ \ / / |/ _` |/ _` | __| |/ _ \| '_ \ 
--  | | (_| | |_) | | |\  | (_| |\ V /| | (_| | (_| | |_| | (_) | | | |
--  |_|\__,_|_.__/  |_| \_|\__,_| \_/ |_|\__, |\__,_|\__|_|\___/|_| |_|
--                                       |___/                         
vim.keymap.set("n", "th", ":tabprev<CR>")
vim.keymap.set("n", "tj", ":tabfirst<CR>")
vim.keymap.set("n", "tk", ":tablast<CR>")
vim.keymap.set("n", "tl", ":tabnext<CR>")
vim.keymap.set("n", "tt", ":tabedit<Space>")
vim.keymap.set("n", "tn", ":tabnew<CR>")
vim.keymap.set("n", "tc", ":tabclose<CR>")
vim.keymap.set("n", "tm", ":tabm<Space>")

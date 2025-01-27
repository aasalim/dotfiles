-- _  __                                    
--| |/ /___ _   _ _ __ ___   __ _ _ __  ___ 
--| ' // _ \ | | | '_ ` _ \ / _` | '_ \/ __|
--| . \  __/ |_| | | | | | | (_| | |_) \__ \
--|_|\_\___|\__, |_| |_| |_|\__,_| .__/|___/
--          |___/                |_|        
--
vim.g.mapleader = " "

require('core.keymaps.buffer_navigation')
require('core.keymaps.tab_navigation')
require('core.keymaps.window_navigation')
require('core.keymaps.file_explorer')
require('core.keymaps.custom_functions')

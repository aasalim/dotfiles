" __     ___                 ____  _             
" \ \   / (_)_ __ ___       |  _ \| |_   _  __ _ 
"  \ \ / /| | '_ ` _ \ _____| |_) | | | | |/ _` |
"   \ V / | | | | | | |_____|  __/| | |_| | (_| |
"    \_/  |_|_| |_| |_|     |_|   |_|\__,_|\__, |
"                                          |___/ 
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"  ____  _             _           
" |  _ \| |_   _  __ _(_)_ __  ___ 
" | |_) | | | | |/ _` | | '_ \/ __|
" |  __/| | |_| | (_| | | | | \__ \
" |_|   |_|\__,_|\__, |_|_| |_|___/
"                |___/             

call plug#begin()
Plug 'vimwiki/vimwiki'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
"Plug 'preservim/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'folke/tokyonight.nvim'
Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'preservim/nerdtree'
call plug#end()

" __     ___        __        ___ _    _ 
" \ \   / (_)_ __ __\ \      / (_) | _(_)
"  \ \ / /| | '_ ` _ \ \ /\ / /| | |/ / |
"   \ V / | | | | | | \ V  V / | |   <| |
"    \_/  |_|_| |_| |_|\_/\_/  |_|_|\_\_|
"                                        
filetype plugin on
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': 'md'}]

"  ____ _                          _              _____     _         
" / ___| |__   __ _ _ __ __ _  ___| |_ ___ _ __  |_   _|_ _| |__  ___ 
"| |   | '_ \ / _` | '__/ _` |/ __| __/ _ \ '__|   | |/ _` | '_ \/ __|
"| |___| | | | (_| | | | (_| | (__| ||  __/ |      | | (_| | |_) \__ \
" \____|_| |_|\__,_|_|  \__,_|\___|\__\___|_|      |_|\__,_|_.__/|___/
"                                                                     
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent

"  _     _              _   _                 _                   
" | |   (_)_ __   ___  | \ | |_   _ _ __ ___ | |__   ___ _ __ ___ 
" | |   | | '_ \ / _ \ |  \| | | | | '_ ` _ \| '_ \ / _ \ '__/ __|
" | |___| | | | |  __/ | |\  | |_| | | | | | | |_) |  __/ |  \__ \
" |_____|_|_| |_|\___| |_| \_|\__,_|_| |_| |_|_.__/ \___|_|  |___/
"                                                                 
set number
set norelativenumber
set scrolloff=10
set sidescrolloff=10
" __        __            _  __        __               
" \ \      / /__  _ __ __| | \ \      / / __ __ _ _ __  
"  \ \ /\ / / _ \| '__/ _` |  \ \ /\ / / '__/ _` | '_ \ 
"   \ V  V / (_) | | | (_| |   \ V  V /| | | (_| | |_) |
"    \_/\_/ \___/|_|  \__,_|    \_/\_/ |_|  \__,_| .__/ 
"                                                |_|    
set nowrap
set linebreak

"
"   ____                 ____                 _ _   _       _ _         
"  / ___|__ _ ___  ___  / ___|  ___ _ __  ___(_) |_(_)_   _(_) |_ _   _ 
" | |   / _` / __|/ _ \ \___ \ / _ \ '_ \/ __| | __| \ \ / / | __| | | |
" | |__| (_| \__ \  __/  ___) |  __/ | | \__ \ | |_| |\ V /| | |_| |_| |
"  \____\__,_|___/\___| |____/ \___|_| |_|___/_|\__|_| \_/ |_|\__|\__, |
"                                                                 |___/ 

set ignorecase
set nosmartcase 

" _____     _         
"|_   _|_ _| |__  ___ 
"  | |/ _` | '_ \/ __|
"  | | (_| | |_) \__ \
"  |_|\__,_|_.__/|___/
"                     
set showtabline=2
set laststatus=2
set tabline=%!MyTabLine()

function! MyTabLine()
    let s = ''
    let current_tab = tabpagenr() " Get the current tab number
    for i in range(tabpagenr('$'))
        let buflist = tabpagebuflist(i + 1)
        let winnr = tabpagewinnr(i + 1)
        let file_name = fnamemodify(bufname(buflist[winnr - 1]), ':t')
        if i + 1 == current_tab
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif
        let s .= '%' . (i + 1) . 'T' . ' ' . file_name . ' '
    endfor
    let s .= '%#TabLineFill#' " Fill the rest of the tabline space
    return s
endfunction

"  ____      _                
" / ___|___ | | ___  _ __ ___ 
"| |   / _ \| |/ _ \| '__/ __|
"| |__| (_) | | (_) | |  \__ \
" \____\___/|_|\___/|_|  |___/
"                             
colorscheme tokyonight


"  ____                           _ 
" / ___| ___ _ __   ___ _ __ __ _| |
"| |  _ / _ \ '_ \ / _ \ '__/ _` | |
"| |_| |  __/ | | |  __/ | | (_| | |
" \____|\___|_| |_|\___|_|  \__,_|_|
"                                   
set noswapfile
set nobackup
set nocompatible
set fileencoding="utf-8"
set pumheight=10
set showmode
set termguicolors
set splitbelow
set splitright

set clipboard=unnamedplus

syntax on

" change from left splitting to right splitting
"let g:netrw_altv=1
"let g:netrw_banner=0
" tree style view in netrw
"let g:netrw_liststyle=3

"Command
set showcmd
set cmdheight=1
"set timeoutlen=200 

let NERDTreeQuitOnOpen=1

"  _  __                                    
" | |/ /___ _   _ _ __ ___   __ _ _ __  ___ 
" | ' // _ \ | | | '_ ` _ \ / _` | '_ \/ __|
" | . \  __/ |_| | | | | | | (_| | |_) \__ \
" |_|\_\___|\__, |_| |_| |_|\__,_| .__/|___/
"           |___/                |_|        

let mapleader=","

" Buffer Navigation
nnoremap <Tab>      :bnext <CR>
nnoremap <S-Tab>    :bprevious <CR>
nnoremap <Leader>d  :bdelete <CR>

" Tab Navigations
nnoremap th  :tabprev<CR>
nnoremap tj  :tabfirst<CR>
nnoremap tk  :tablast<CR>
nnoremap tl  :tabnext<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnew<CR>
nnoremap tc  :tabclose<CR>
nnoremap tm  :tabm<Space>

" Window Navigation
nnoremap <Leader>v  :vsplit<CR><C-w>w :enew<CR>
nnoremap <Leader>h  :split<CR><C-w>w :enew<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-Left> :vertical resize +3<CR>
nnoremap <C-Right> :vertical resize -3<CR>
nnoremap <C-Up> :horizontal resize +3<CR>
nnoremap <C-Down> :horizontal resize -3<CR>

" File Explorer
let g:NERDTreeWinPos = "right"
nnoremap <Leader>e :NERDTreeToggle<CR>

"Generates ASCII art 
nnoremap <Leader>fig :call PromptFiglet()<CR>
function! PromptFiglet()
  let user_input = input('Text: ')
  let first_char = input('First Character: ')
  execute "read! figlet '" . user_input . "' | awk '{print \"" . first_char . "\" $0}'"
endfunction

"Toggle Goyo
let g:goyo_width = 100
nnoremap <Leader>G :Goyo<CR>

" Insert diary template
nnoremap <Leader>diary :call WikiDiaryTemplate()<CR>
function! WikiDiaryTemplate()
    call setline(line('.'), [
                \ '# '. strftime("%Y-%m-%d"),
                \ '',
                \ '## TODO',
                \ '* [ ] ',
                \ '',
                \ '## NOTES',
                \ '- ',
                \ ])
endfunction

" Insert C  Header Guard
nnoremap <Leader>~ :call InsertCGuard()<CR>
function! InsertCGuard()
  let l:filename = expand('%:t')            " Get the filename with extension
  let l:guard = substitute(l:filename, '\.', '_', 'g') " Replace dots with underscores
  let l:guard = toupper(l:guard)            " Convert to uppercase
  call append(0, '#ifndef ' . l:guard)
  call append(1, '#define ' . l:guard)
  call append('$', '#endif /* ' . l:guard . ' */')
endfunction

" Reload MYVIMRC
nnoremap <Leader>r :source $MYVIMRC<CR>

" _    _   _   _    
"| |  | | | | / \   
"| |  | | | |/ _ \  
"| |__| |_| / ___ \ 
"|_____\___/_/   \_\
"                   

lua << EOF
require("toggleterm").setup({
    open_mapping=[[<Leader>\]],
    size=12,
    direction='horizontal',
    hide_numbers=true,
    start_in_insert=true
})

-- Terminal Navigation
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  -- vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
function _lazygit_toggle()
  lazygit:toggle()
end
vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})
EOF

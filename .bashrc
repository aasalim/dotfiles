#__  ______   ____   ____  _               _             _          
#\ \/ /  _ \ / ___| |  _ \(_)_ __ ___  ___| |_ ___  _ __(_) ___  ___
# \  /| | | | |  _  | | | | | '__/ _ \/ __| __/ _ \| '__| |/ _ \/ __|
# /  \| |_| | |_| | | |_| | | | |  __/ (__| || (_) | |  | |  __/\__ \
#/_/\_\____/ \____| |____/|_|_|  \___|\___|\__\___/|_|  |_|\___||___/
#                                                                    
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:=$HOME/.config}
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.share"
export XDG_STATE_HOME="$HOME/.state"

#__     ___          
#\ \   / (_)_ __ ___  
# \ \ / /| | '_ ` _ \
#  \ V / | | | | | | |
#   \_/  |_|_| |_| |_|
#                    
export VIMRC="$HOME/.config/nvim/init.lua"
export VIMINIT="source $VIMRC"
alias vim="nvim"
alias vi="nvim"
export EDITOR="nvim"

#    _    _ _                    
#   / \  | (_) __ _ ___  ___  ___
#  / _ \ | | |/ _` / __|/ _ \/ __|
# / ___ \| | | (_| \__ \  __/\__ \
#/_/   \_\_|_|\__,_|___/\___||___/
#                                

alias wiki="cd $HOME/vimwiki;vim -c VimwikiIndex"
alias srcb="source $BASHRC"

# Terminal Navigation
alias ls="ls -la --color=auto"

# ____                            _  
#|  _ \ _ __ ___  _ __ ___  _ __ | |_
#| |_) | '__/ _ \| '_ ` _ \| '_ \| __|
#|  __/| | | (_) | | | | | | |_) | |_
#|_|   |_|  \___/|_| |_| |_| .__/ \__|
#                          |_|        
BRACKET_COLOR="\[\033[38;5;35m\]"
CLOCK_COLOR="\[\033[38;5;35m\]"
JOB_COLOR="\[\033[38;5;33m\]"
PATH_COLOR="\[\033[38;5;33m\]"
LINE_BOTTOM="\342\224\200"
LINE_BOTTOM_CORNER="\342\224\224"
LINE_COLOR="\[\033[38;5;248m\]"
LINE_STRAIGHT="\342\224\200"
LINE_UPPER_CORNER="\342\224\214"
END_CHARACTER="|"

tty -s && export PS1="$LINE_COLOR$LINE_UPPER_CORNER$LINE_STRAIGHT$LINE_STRAIGHT$BRACKET_COLOR[$CLOCK_COLOR\t$BRACKET_COLOR]$LINE_COLOR$LINE_STRAIGHT$BRACKET_COLOR[$JOB_COLOR\j$BRACKET_COLOR]$LINE_COLOR$LINE_STRAIGHT$BRACKET_COLOR[\H:\]$PATH_COLOR\w$BRACKET_COLOR]\n$LINE_COLOR$LINE_BOTTOM_CORNER$LINE_STRAIGHT$LINE_BOTTOM$END_CHARACTER\[$(tput sgr0)\] "

# ____   _  _____ _   _
#|  _ \ / \|_   _| | | |
#| |_) / _ \ | | | |_| |
#|  __/ ___ \| | |  _  |
#|_| /_/   \_\_| |_| |_|
#                      
export BASHRC="$HOME/.bashrc"
export DOTFILES="$HOME/dotfiles"
export PATH="$DOTFILES:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"


#  ____                           _ 
# / ___| ___ _ __   ___ _ __ __ _| |
#| |  _ / _ \ '_ \ / _ \ '__/ _` | |
#| |_| |  __/ | | |  __/ | | (_| | |
# \____|\___|_| |_|\___|_|  \__,_|_|
#                                   
eval "$(tmuxifier init -)"
export TERM=tmux-256color

#__        __         _     __ _               
#\ \      / /__  _ __| | __/ _| | _____      __
# \ \ /\ / / _ \| '__| |/ / |_| |/ _ \ \ /\ / /
#  \ V  V / (_) | |  |   <|  _| | (_) \ V  V / 
#   \_/\_/ \___/|_|  |_|\_\_| |_|\___/ \_/\_/  
#                                              
alias rice="tmuxifier load-session rice"
alias work="tmuxifier load-session work"

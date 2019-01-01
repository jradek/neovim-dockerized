export PS1="\w $ "
export FZF_DEFAULT_COMMAND="find -type f"

# see: https://github.com/junegunn/fzf/wiki/Color-schemes
export FZF_DEFAULT_OPTS="
--color bg:0,bg+:2,fg:11,fg+:15,hl:5,hl+:1
"

# obvious :-)
alias vim="nvim"

# start vim and select file with fzf
alias vimf='nvim "$(fzf)"'

alias ll="ls -lhA"

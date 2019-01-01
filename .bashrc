export PS1="\w $ "
export FZF_DEFAULT_COMMAND="find -type f"

# the default command uses '-fstype' option which does not work in docker :-(
export FZF_CTRL_T_COMMAND="command find -L . -mindepth 1 \\( -path '*/\\.*' \\) -prune -print \
     -o -type f -print \
     -o -type d -print \
     -o -type l -print 2> /dev/null | cut -b3-"

# see: https://github.com/junegunn/fzf/wiki/Color-schemes
export FZF_DEFAULT_OPTS="
--color bg:0,bg+:2,fg:11,fg+:15,hl:5,hl+:1
"

# obvious :-)
alias vim="nvim"

# start vim and select file with fzf
alias vimf='nvim "$(fzf)"'

alias ll="ls -lhA"

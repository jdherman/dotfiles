# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# redefine color scheme
echo -ne '\e]4;0;#073642\a'   # black
echo -ne '\e]4;1;#dc322f\a'   # red
echo -ne '\e]4;2;#859900\a'   # green
echo -ne '\e]4;3;#b58900\a'   # yellow
echo -ne '\e]4;4;#268bd2\a'   # blue
echo -ne '\e]4;5;#d33682\a'   # magenta
echo -ne '\e]4;6;#2aa198\a'   # cyan
echo -ne '\e]4;7;#eee8d5\a'   # white (light grey really)
echo -ne '\e]4;8;#002b36\a'   # bold black (i.e. dark grey)
echo -ne '\e]4;9;#cb4b16\a'   # bold red
echo -ne '\e]4;10;#586e75\a'  # bold green
echo -ne '\e]4;11;#657b83\a'  # bold yellow
echo -ne '\e]4;12;#839496\a'  # bold blue
echo -ne '\e]4;13;#6c71c4\a'  # bold magenta
echo -ne '\e]4;14;#93a1a1\a'  # bold cyan
echo -ne '\e]4;15;#fdf6e3\a'  # bold white

echo -ne '\e]10;#eee8d5\a'  # foreground
#echo -ne '\e]11;#002b36\a'  # background
#echo -ne '\e]12;#859900\a'  # cursor

export PATH=$PATH:"/cygdrive/c/Program Files/Java/jdk1.7.0_03/bin"
export PATH="/cygdrive/c/Python27/":$PATH

alias ls='ls --color=tty'
alias la='ls -a'
alias ll='ls -l'
alias du='du -hs *'
eval "`dircolors --sh /etc/DIR_COLORS`"

# ssh key login
alias key='eval `ssh-agent` && ssh-add'

# remote aliases (removed)
# alias foo='ssh user@host'

# git stuff
alias gcam='git commit -am'
alias gundo='git reset --soft HEAD^'
alias gwho='git shortlog -sn'
alias gstat='git status -sb'
alias glist='git for-each-ref --shell --format="echo %(refname:short) && git log -n 1 --format=format:\" %%cd%%n %%B\" %(refname)" refs/ | sh'

# Return to directory shortcut
bk() { alias $1=cd\ $PWD; }

# prompt (33 = green, 31 = red ...)
PS1='\[\033[G\]\[\e]0;\w\a\]\n\[\e[32m\]\u \[\e[33m\]\w\[\e[0m\]\n\$ '

# search history up/down
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'
set show-all-if-ambiguous on
set completion-ignore-case on

export HISTSIZE=1000000
export HISTFILESIZE=1000000
shopt -s histappend

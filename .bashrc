# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
alias 0='clear'
alias vim='nvim'
alias din='sudo dnf install'
fastfetch
PS1='\[\e[97;1m\]┌\[\e[0;44m\] \[\e[97m\]\t\[\e[39;1m\]:\[\e[0;34;102m\]▓▒░\[\e[30;102m\]\u\[\e[92;102m\] \[\e[92;102m\]🐧\[\e[92;102m\] \[\e[30;102m\]\h\[\e[92;107m\]▓▒░\[\e[30;107;1m\] \[\e[30;107m\]>\[\e[30;107m\]>\[\e[30;107m\] \[\e[0;30;107m\]\w\[\e[0;107m\] \[\e[0;97m\]▓▒░\n\[\e[97;1m\]└─\[\e[97m\]>\[\e[0m\] \\$ '
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# Modified .bashrc
alias dot=/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME

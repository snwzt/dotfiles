# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

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

# add .local/bin to path
export PATH="$HOME/.local/bin:$PATH"

# asdf
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

# git bash prompt
export PS1='\u@\h \W $(if [ -n "$(git rev-parse --show-toplevel 2>/dev/null)" ]; then echo -n "$(if [ -n "$(git config --get user.name)" ]; then echo -n "($(git config --get user.name)) "; fi)$(__git_ps1 "(%s) ")"; fi)'
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

# completions
source /etc/profile.d/bash_completion.sh
source /usr/share/git-core/contrib/completion/git-prompt.sh
source <(kubectl completion bash)
# source <(kind completion bash)

# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# prompt
PS1="%n@%m %~ > "

# asdf
. "$HOME/.asdf/asdf.sh"
fpath=(${ASDF_DIR}/completions $fpath)

# The following lines were added by compinstall
zstyle :compinstall filename '/var/home/snwzt/.config/zsh/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

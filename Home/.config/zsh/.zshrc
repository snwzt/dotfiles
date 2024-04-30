# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# prompt
PS1="%n@%m %~ > "

# brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

# The following lines were added by compinstall
zstyle :compinstall filename '/var/home/snwzt/.config/zsh/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

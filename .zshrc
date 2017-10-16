export ZSH=~/.zsh

export LC_ALL=de_DE.UTF-8
export LANG=de_DE.UTF-8

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Extend Autocomplete Search Path
fpath=($HOME/.zsh/lib/completions $fpath)

# Load and run compinit
autoload -U compinit
compinit -i

PATH=/usr/local/bin:/usr/local/sbin:$PATH

# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#eval "$(rbenv init -)"

# Go Path related exports
export GOPATH=~/dev/go
export PATH=$PATH:$GOPATH/bin

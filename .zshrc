# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="psychedelic-funky"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx bundler)

# run oh-my-zsh!
source $ZSH/oh-my-zsh.sh

#
# the config formerly known as bash
#

# program and documentation paths
PATH=/usr/local/bin:/usr/pear/bin:$HOME/bin:/usr/local/share/npm/bin:/usr/local/Cellar/python/2.7.1/bin:$PATH
MANPATH=/opt/local/share/man:$MANPATH

# bash .profile
EDITOR='mate -w'

# postgresql config
ARCHFLAGS='-arch x86_64'
PGDATA=/usr/local/var/postgres

# mysql config
MYSQL_PS1="\R:\m:\s \h> "

# load rvm into a shell session
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# jsdoc config
JSDOCTEMPLATEDIR=/home/necromancer/Code/jsdoc/jsdoc-toolkit/templates
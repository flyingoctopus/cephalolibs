export ZSH=$HOME/lib/oh-my-zsh
export ZSH_THEME="prose"
export DISABLE_AUTO_UPDATE="false"
source $ZSH/oh-my-zsh.sh

# Custom options -------------------------------------------------------------
unsetopt promptcr

# Useful aliases -------------------------------------------------------------
alias fab='fab -i ~/.ssh/vincentvanhaaff'
alias oldgcc='export CC=/usr/bin/gcc-4.0'

# Environment variables ------------------------------------------------------
export EDITOR='vim'
export PATH="$HOME/.gem/ruby/1.8/bin:${PATH}"
export PATH="/usr/local/bin:/usr/local/sbin:$HOME/lib/fmscripts:$HOME/bin:$PATH"
export PATH="/opt/subversion/bin:${PATH}"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

export PATH="${PATH}:/usr/local/Cellar/PyPi/3.6/bin"
export PATH="${PATH}:/usr/local/Cellar/python/2.6.4/bin"
export PATH="${PATH}:/usr/local/Cellar/python/2.6.5/bin"
export WORKON_HOME="${HOME}/lib/virtualenvs"
export GREP_OPTIONS='--color=auto'
export HISTSIZE=1000
export HISTFILESIZE=1000
export HISTCONTROL=erasedups
export PYTHONSTARTUP="$HOME/.pythonrc.py"
export COMMAND_MODE=unix2003
export RUBYOPT=rubygems

export PYTHONPATH="/usr/local/lib/python2.6/site-packages:$PYTHONPATH"
export PYTHONPATH="$PYTHONPATH:/usr/local/lib/python2.7/site-packages"

# Shell environment export for vim 
export SHELL=/bin/zsh

# Extra shell extensions like z and tab completion for Mercurial -------------
 if [[ -s $HOME/.screeninator/scripts/screeninator ]] ; then source $HOME/.screeninator/scripts/screeninator ; fi

# BCVI -----------------------------------------------------------------------
test -n "$(which bcvi)" && eval "$(bcvi --unpack-term)"
test -n "${BCVI_CONF}"  && alias vi="bcvi"
test -n "${BCVI_CONF}"  && alias suvi="EDITOR='bcvi -c viwait' sudoedit"
test -n "${BCVI_CONF}"  && alias bcp="bcvi -c scpd"

# rvm -----------------------------------------------------------------------
source ~/.rvm/scripts/rvm
type rvm | head -1


# vim -----------------------------------------------------------------------
source ~/.inputrc
source ~/.editrc

set -o vi

# motd -----------------------------------------------------------------------
echo "\n\n"
cat /etc/motd


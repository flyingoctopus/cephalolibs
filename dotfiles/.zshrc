export ZSH=$HOME/lib/oh-my-zsh
export ZSH_THEME="prose"
export DISABLE_AUTO_UPDATE="true"
source $ZSH/oh-my-zsh.sh

# Custom options -------------------------------------------------------------
unsetopt promptcr

# Useful aliases -------------------------------------------------------------
alias j='z'
alias fab='fab -i ~/.ssh/vincentvanhaaff'
alias oldgcc='export CC=/usr/bin/gcc-4.0'

# Environment variables ------------------------------------------------------
export EDITOR='mvim'
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
export R_LIBS="$HOME/lib/r"
export BAT_CHARGE="$HOME/bin/batcharge.py"
export RUBYOPT=rubygems
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar

# Mercurial variables --------------------------------------------------------
export PATH="$HOME/lib/hg/hg-stable:$PATH"
export PYTHONPATH="$HOME/lib/hg/hg-stable:$PYTHONPATH"
export PYTHONPATH="/usr/local/lib/python2.6/site-packages:$PYTHONPATH"
export PYTHONPATH="$PYTHONPATH:/usr/local/lib/python2.7/site-packages"

# Shell environment export for vim 
export SHELL=/bin/zsh

# Extra shell extensions like z and tab completion for Mercurial -------------
source ~/lib/z/z.sh
export VEW_PATH="$HOME/lib/python/virtualenvwrapper/virtualenvwrapper.sh"
if [[ -s $HOME/.screeninator/scripts/screeninator ]] ; then source $HOME/.screeninator/scripts/screeninator ; fi

# See ------------------------------------------------------------------------
export PYTHONPATH="$HOME/lib/python/see:$PYTHONPATH"

# Pre-Prompt Command ---------------------------------------------------------
function precmd () {
    z --add "$(pwd -P)"
}

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

# hibernate -----------------------------------------------------------------------

alias hibernateon="sudo pmset -a hibernatemode 5"
alias hibernateoff="sudo pmset -a hibernatemode 0"
 
source $HOME/.zshrc.local

# MacPorts Installer addition on 2010-09-15_at_21:09:29: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/apache2/bin:/opt/local/bin:/opt/local/sbin:/opt/local/lib/mysql5/bin:/opt/nginx/bin:/opt/nginx/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/vincent/.profile file was backed up as /Users/vincent/.profile.macports-saved_2010-09-19_at_23:06:46
##

# git commit to use mvim
#export GIT_EDITOR='mvim -f -c"au VimLeave * !open -a Terminal"'
export EDITOR='mvim -f -c "au VimLeave * !open -a Terminal"'

# flyingoctopus
export TERM=xterm-color
alias ls='ls -lahFG'

# set up mysql prefpane aliases
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

# set up mysql macport aliases
#alias mysqlstart='sudo /opt/local/bin/mysqld_safe5 &'
#alias mysqlstop='/opt/local/bin/mysqladmin5 -u root -p shutdown'
 
alias apache2ctl='sudo /opt/local/apache2/bin/apachectl'
alias httpd2='sudo /opt/local/apache2/bin/httpd'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

export  GIT_EXTERNAL_DIFF=/Users/vincent/lib/git/useChanges
if [[ -s $HOME/.screeninator/scripts/screeninator ]] ; then source $HOME/.screeninator/scripts/screeninator ; fi

export SHELL=/bin/zsh
export PATH=$HOME/local/node/bin:$PATH

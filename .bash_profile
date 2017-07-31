# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

alias grep='grep --color'
alias baas='/usr/bin/baas'
EDITOR=vi
export EDITOR
export JAVA_HOME=/home/ducp/.jumbo/opt/sun-java7
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
PATH=$JAVA_HOME/bin:$PATH:$HOME/bin

export PATH
unset USERNAME
export TMOUT=0

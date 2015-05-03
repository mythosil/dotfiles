
#PKG_CONFIG_PATH="$HOME/local/lib/pkgconfig:$PKG_CONFIG_PATH"
#PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/opt/local/lib/pkgconfig"
#PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig"
#export PKG_CONFIG_PATH

export EDITOR="vim"
export WORDCHARS="*?_-.[]~=&;!#$%(){}<>&lt;&gt;"

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export JDK_HOME=`/usr/libexec/java_home -v 1.8`
export JAVA_OPTS="-Dfile.encoding=UTF-8 -Dgroovy.source.encoding=UTF-8"
export MAVEN_OPTS="-Dfile.encoding=UTF-8"
#export GRADLE_HOME="/opt/local/share/java/gradle"
#export GROOVY_HOME="/opt/local/share/java/groovy"
#export SBT_OPTS="-XX:MaxPermSize=256m"

export PYTHONSTARTUP="$HOME/.pythonrc.py"

if [ `uname -s` = 'Darwin' -a -f ~/.zsh/.zshenv.darwin ]; then
  source ~/.zsh/.zshenv.darwin
fi

if [ `uname -s` = 'Linux' -a -f ~/.zsh/.zshenv.linux ]; then
  source ~/.zsh/.zshenv.linux
fi

if [ -f ~/.zsh/.zshenv.local ]; then
  source ~/.zsh/.zshenv.local
fi


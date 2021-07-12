# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/trozdol/.oh-my-zsh"
ZSH_THEME="trozdol"
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_UPDATE_PROMPT="true"
# export UPDATE_ZSH_DAYS=13
# DISABLE_MAGIC_FUNCTIONS=true
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Custom Aliases

alias o="open ";
alias nt="open -a Terminal .";
alias c="code";
alias p="open -a Termina ~/Dropbox/localhost";

alias nodoze="clear; echo '  ((•) _ (•))   '; caffeinate -d -i -s -u";

# alias nginx-start="nginx";
# alias nginx-stop="nginx -s stop ";

alias nginx-start="brew services start nginx"
alias nginx-reload="brew services restart nginx"
alias nginx-restart="brew services stop nginx"

# DB2 ODBC:
# export PATH="/Applications/dsdriver/bin:$PATH"
# source /Applications/dsdriver/db2profile
# export LDFLAGS="-L/usr/local/opt/libiconv/lib"
# export CPPFLAGS="-I/usr/local/opt/libiconv/include"
# export LD_LIBRARY_PATH="/usr/lib/libiodbc.dylib"
# export ODBCINI="/usr/local/etc/odbc.ini"
# export ODBCINI=/usr/local/etc/odbc.ini
# export ODBCSYSINI=/usr/local/etc

# JAVA:
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_241.jdk/Contents/Home/
# export PATH=/opt/apache-maven/apache-maven-3.6.3/bin:$PATH
# export M2_HOME=/opt/apache-maven/apache-maven-3.6.3
# export M2=$M2_HOME/bin
# export MAVEN_OPTS="-Xms256m -Xmx512m"
# export PATH=$M2:$PATH


# HOMEBREW PHP:
export PKG_CONFIG_PATH="/usr/local/opt/openldap/lib/pkgconfig";
export LDFLAGS="-L/usr/local/opt/php@8.1/lib";
export CPPFLAGS="-I/usr/local/opt/php@8.1/include";

export PATH="/usr/local/sbin:$PATH";
export PATH="/usr/local/opt/php@8.1/bin:$PATH";
export PATH="/usr/local/opt/php@8.1/sbin:$PATH";
export PATH="/Users/trozdol/Dropbox/bin/sencha/cmd:$PATH";
export PATH="/Users/trozdol/bin/Sencha/Cmd:$PATH";
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

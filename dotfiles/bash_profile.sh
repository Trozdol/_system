for file in ~/.{functions,aliases,exports,path,bash_prompt,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

shopt -s nocaseglob;
shopt -s histappend;
shopt -s cdspell;

# Enable some Bash 4 features when possible:
#
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Add tab completion for many Bash commands
#
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
	source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

# Enable tab completion for `g` by marking it as an alias for `git`
#
if type _git &> /dev/null && [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	complete -o default -o nospace -F _git g;
fi;

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
#
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

# Add tab completion for `defaults read|write NSGlobalDomain`
#
complete -W "NSGlobalDomain" defaults;

# Add `killall` tab completion for common apps
#
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall;

# Homebrew, Sencha, Node Version Mananger
#
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/.bin/Sencha/Cmd:$PATH

# export NVM_DIR="$HOME/.nvm"
# . "$(brew --prefix nvm)/nvm.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# TODO: add direct alias to node bin to
# avoid long load time of shell
#
# alias NODE_6="$NVM_DIR/versions/node/v6.3.1/bin/node"
# export PATH=$NODE_6
export PATH="/Users/trozdol/.bin/Sencha/Cmd:$PATH"

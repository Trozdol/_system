autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '[ %b ]'
IPV4=$(ifconfig en1 inet | grep 'inet ' | cut -d: -f2 | awk '{ print $2}');

setopt PROMPT_SUBST
# PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
PROMPT="
${fg[limegreen]}%n@${fg[green]}${IPV4}${reset_color}:%/ ${fg[cyan]}$(vcs_info)${reset_color}
$ ";

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%} [%{$fg[red]%}]"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"


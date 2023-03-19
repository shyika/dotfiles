# [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Linux
# export PATH="$HOME/bin:/home/linuxbrew/.linuxbrew/bin:$PATH";

# export CLICOLOR=1
# export LSCOLORS=GxFxCxDxBxegedabagaced

# orange=$(tput setaf 166);
# yellow=$(tput setaf 228);
# green=$(tput setaf 71);
# white=$(tput setaf 15);
# bold=$(tput bold);
# reset=$(tput sgr0);

# purple=$(tput setaf 125);
# violet=$(tput setaf 61);
# yellow2=$(tput setaf 136);
# red=$(tput setaf 124);
# cyan=$(tput setaf 37);
# blue=$(tput setaf 33);


# export FORCE_COLOR=true
alias open='explorer'

# Easier navigation:
alias ~='cd ~'
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

# Shortcuts
alias d="cd ~/Dropbox"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/projects"

alias g="git"
alias gbclean='git branch | grep -v "master" | xargs git branch -D'
alias gbclean='git branch | grep -v "main" | xargs git branch -D'
alias gcclean='git checkout index-with-menu.html packages/platform-common-service/src/http/graphql/graphql-client-factory.js packages/platform-common-service/src/utils/env-utils.js'
alias grestore='git restore --staged index-with-menu.html index.html scripts/token-update.js'
# If you have branches containing master then this script won't delete those.
# git branch | grep -ve " master$" | xargs git branch -D
alias c='clear'
alias r='source ~/.bashrc'
# 320K
# Download and convert to mp3 from youtube
alias ydmp3='youtube-dl -x --audio-format mp3 --audio-quality 0'
alias ydlmp3='youtube-dl --extract-audio --audio-format mp3 --audio-quality 0 --yes-playlist'

# youtube-dl -i -f mp4 --write-auto-sub --sub-lang en -o "%(playlist_index)s-%(title)s.%(ext)s" --yes-playlist
# youtube-dl -i -f mp4 --write-auto-sub -o "%(playlist_index)s-%(title)s.%(ext)s" --yes-playlist


# Create a new directory and enter it
function mkd() {
  mkdir -p "$@" && cd "$_";
}

# Determine size of a file or total size of a directory
function fs() {
  if du -b /dev/null > /dev/null 2>&1; then
    local arg=-sbh;
  else
    local arg=-sh;
  fi
  if [[ -n "$@" ]]; then
    du $arg -- "$@";
  else
    du $arg .[^.]* ./*;
  fi;
}

GIT_PS1_SHOWDIRTYSTATE=true
# GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=true
# If you would like to see the difference between HEAD and its upstream
GIT_PS1_SHOWUPSTREAM="verbose git"
GIT_PS1_STATESEPARATOR=" | "
# If you would like a colored hint about the current dirty state
GIT_PS1_SHOWCOLORHINTS=true

# PS1="\[${bold}\]\[${red}\]➜  \[${reset}\]\u "
# PS1+="\[${white}\] at "
# PS1+="\[${yellow}\]\h"
# PS1+="\[${white}\] in "
# PS1+="\[${green}\]\w"
# PS1+='$(__git_ps1 "\[${white}\] on \[${violet}\](%s)")'
# PS1+="\[${yellow}\] ✗ \[${reset}\]";

# PS1='\[${bold}\]\h \t \u \w $(__git_ps1 " (%s)") \n\[${yellow}\] ➜  \[${reset}\]'
# PS1='➜ \W $(__git_ps1 " (%s)") '
# export PS1;
export PS1='\w$(__git_ps1 " (%s)") \$ '

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

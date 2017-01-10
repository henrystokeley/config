#vi mode
set -o vi

#git autocomplete
source ~/.git-completion.bash
#bash autocomplete
if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
      . $(brew --prefix)/share/bash-completion/bash_completion
fi

#make sure we use brew installs over defaults
export PATH=/usr/local/bin:$PATH

#enable colours for grep/ls
export GREP_OPTIONS='--color=auto'
export CLICOLOR=1

# Replace vi with vim
alias vi='vim'

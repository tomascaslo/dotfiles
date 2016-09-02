export PS1="\W \$ "
export EDITOR='vim'
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export WORKON_HOME=~/.penvs

# Drupal Drush ugh...
alias dru='/Users/tomascaslo/Documents/dev/projects/vagrant-drupal/drush/drush'
export PATH="$PATH:/Applications/DevDesktop/drush"

export PATH="$PATH:~/.vimpkg/bin"

# Load Vim from MacVim in order for YCM to work
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt

alias pjs="pathogenjs"

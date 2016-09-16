export EDITOR='vim'
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export MYVIMRC=/Users/tomascaslo/dotfiles/.vimrc

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export WORKON_HOME=~/.penvs
export PATH="$PATH:~/.vimpkg/bin"

# Drupal Drush ugh...
alias dru='/Users/tomascaslo/Documents/dev/projects/vagrant-drupal/drush/drush'
export PATH="$PATH:/Applications/DevDesktop/drush"

# Load Vim from MacVim in order for YCM to work
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'

# Pathogenjs
alias pjs="pathogenjs"

# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt

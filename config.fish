alias vim "/Applications/MacVim.app/Contents/MacOS/Vim"
alias pjs "pathogenjs"

export MYVIMRC="/Users/tomascaslo/dotfiles/.vimrc"

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-7

# Python virtualfish
export VIRTUALFISH_HOME=~/.penvs
set -gx PYTHONPATH /usr/local/lib/python2.7/site-packages $PYTHONPATH
eval (python -m virtualfish)

# fish vi mode
set fish_bind_mode insert
set fish_key_bindings fish_user_key_bindings

# theme config
set -g theme_color_scheme solarized-light
set -g theme_display_ruby no
set -g theme_display_date no
set -g theme_display_virtualenv yes
set -g theme_powerline_fonts yes
set -g theme_display_vi yes

set -U fish_user_paths $fish_user_paths ~/.vimpkg/bin

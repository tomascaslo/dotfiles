function fish_user_key_bindings
  fish_vi_key_bindings

  bind -M insert -m default \ck backward-char force-repaint
  bind -M visual -m default \ck backward-char force-repaint
end

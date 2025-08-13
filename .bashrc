if [ -f ~/.local/share/omakub/defaults/bash/rc ]; then
  # Load Omakub defaults
  source ~/.local/share/omakub/defaults/bash/rc
fi

if [ -f ~/.local/share/dotfiles/bash/rc ]; then
  # Load Dotfiles defaults
  source ~/.local/share/dotfiles/bash/rc
fi

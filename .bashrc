if [ -f ~/.local/share/omakub/defaults/bash/rc ]; then
  # Load Omakub defaults
  source ~/.local/share/omakub/defaults/bash/rc
fi

if [ -f ~/.local/share/dotfiles/bash/rc ]; then
  # Load Dotfiles defaults
  source ~/.local/share/dotfiles/bash/rc
fi

# Editor used by CLI
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion


unset color_prompt force_color_prompt

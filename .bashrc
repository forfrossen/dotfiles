if [ - f ~/.local/share/omakub/defaults/bash/rc ]; then
  # Load Omakub defaults
  source ~/.local/share/omakub/defaults/bash/rc
else
  if [ -f ~/.local/share/dotfiles/bash/rc ]; then
    # Load Omakub defaults
    source ~/.local/share/dotfiles/bash/rc
  fi
fi

# Editor used by CLI
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

alias grep='grep --color'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias dnstop='sudo dnstop -l 5 ens18'
alias vnstat='vnstat -i ens18'
alias bc='bc -l'
#alias ll='ls -la'
alias ll='eza -lagh --icons --group-directories-first --smart-group'
alias cat=bat
alias yubimount='yubi-mount.sh'

if [ -d "/usr/local/go/bin" ]; then
  PATH="/usr/local/go/bin:$PATH"
fi

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
  if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    color_prompt=yes
  else
    color_prompt=
  fi
fi

if [ "$color_prompt" = yes ]; then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
  PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

unset color_prompt force_color_prompt

if [ -n "oh-my-posh" ]; then
  if [ -f ~/.cache/oh-my-posh/themes/nordtron.omp.json ]; then
    eval "$(oh-my-posh init bash --config ~/.cache/oh-my-posh/themes/nordtron.omp.json)"
  else
    echo "Oh My Posh theme not found: ~/.cache/oh-my-posh/themes/nordtron.omp.json"
  fi
else
  echo "Oh My Posh is not installed."
fi
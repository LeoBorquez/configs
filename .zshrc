
  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship

  if type brew &>/dev/null; then
  	FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  	autoload -Uz compinit
  	compinit
  fi
  
  # Plugings

  pluggins=(zsh-autosuggestions)

  # Basic auto/tab complete:
  autoload -U compinit
  zstyle ':completion:*' menu select
  zmodload zsh/complist 
  compinit 
  _comp_options+=(globdots)

  # use zsh-syntax-highligthting
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="/usr/local/opt/python@3.9/bin:$PATH"
export PATH="/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin:$PATH"

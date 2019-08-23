# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

for file in ~/.{exports,aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Show contents of directory after cd-ing into it
chpwd() {
	ls -lrthG
}

# Save a ton of history
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000

# Disable flow control commands (keeps C-s from freezing everything)
stty start undef
stty stop undef

# change directory by typing the name of the directory
setopt AUTO_CD

setopt EXTENDED_GLOB

# zsh-autosuggestions accept suggest
bindkey '^O' forward-word
bindkey '^ ' autosuggest-accept

# Add RVM and elixir's escripts to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin:$HOME/.mix/escripts"

# Zsh auto suggestions https://github.com/zsh-users/zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

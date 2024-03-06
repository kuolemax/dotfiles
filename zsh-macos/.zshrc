#
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

# === variable ===
proxy_url=http://127.0.0.1:7890

# === alias ===
# 	for zsh
alias zshconfig="nvim /home/kuolemax/.zshrc"
alias zshreload="source /home/kuolemax/.zshrc"
#	for package manage
alias yu="yay -Syu"
alias yi="yay -S"
alias yr="yay -Rscn"
alias ys="yay -Ss"
alias yq="yay -Q"
alias yqs="yay -Qs"

#	for grub update
alias grub-update="grub-mkconfig -o /boot/grub/grub.cfg"
#	for lsd
alias ls="lsd"
alias la="lsd -Ah"
alias ll='lsd -lh'
alias lla="lsd -la"
alias lsa='lsd -lah'

# === functions ===
export https_proxy=$proxy_url
export http_proxy=$proxy_url
export all_proxy=$proxy_url
function proxy-on() {
	export https_proxy=$proxy_url
	export http_proxy=$proxy_url
	export all_proxy=$proxy_url
	git config --global http.proxy $proxy_url
	echo "Proxy ON..."
}

function proxy-off() {
	unset http_proxy
	unset https_proxy
	unset all_proxy
	git config --global --unset http.proxy
	echo "Proxy OFF..."
}

function open() {
  xdg-open $1 > /dev/null 2>&1 &
}

# === plugins ===

source /usr/share/zinit/zinit.zsh

zinit snippet OMZL::completion.zsh

zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::docker
zinit snippet OMZP::docker-compose
zinit snippet OMZP::docker-machine

zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zdharma-continuum/history-search-multi-word

#zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-history-substring-search

zinit light changyuheng/zsh-interactive-cd

# theme
eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="/home/kuolemax/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

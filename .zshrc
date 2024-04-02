if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


TERM=xterm-256color
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting gh dotnet)
source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(zoxide init zsh)"


alias cat=bat

alias ls="exa" # ls
alias ll='exa -lbF --git' # list, size, type, git
alias llm='exa -lbGd --git --sort=modified' # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale' # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list
alias lS='exa -1' # one column, just names
alias lt='exa --tree --level=2' # tree

alias fd=find

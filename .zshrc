export https_proxy=http://127.0.0.1:7897 http_proxy=http://127.0.0.1:7897 all_proxy=socks5://127.0.0.1:7897
export PATH="/opt/homebrew/bin:$PATH"
HOMEBREW_NO_AUTO_UPDATE=1


alias vim=nvim
export editor=nvim
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/mysql-client/lib"
export CPPFLAGS="-I/opt/homebrew/opt/mysql-client/include"
export QTDIR=/Users/gz/qt/6.4.2/macos/
export PATH=$QTDIR/bin:$PATH
export CPLUS_INCLUDE_PATH=$QTDIR/include:$CPLUS_INCLUDE_PATH
export LIBRARY_PATH=$QTDIR/lib:$LIBRARY_PATH
alias dk=docker
alias vi=nvim
alias vim=neovide


mkdir(){
    /bin/mkdir "$@" && cd "$@"
}

eval "$(zoxide init zsh)"
eval $(thefuck --alias ff)
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^w' autosuggest-accept
bindkey '^e' autosuggest-execute
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias ran=joshuto
alias ls=function_eza
alias e=exit
alias wa="wsh ai"
alias wo="wsh web open"
alias we="wsh edit"
alias cb="cmake --build"
alias config='/usr/bin/git --git-dir=$HOME/.dotfile --work-tree=$HOME'



function_eza(){
    eza $@ -l -u
}
function_exit(){
    exit
}
eval "$(starship init zsh)"
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi
export PATH="/usr/bin:$PATH"
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

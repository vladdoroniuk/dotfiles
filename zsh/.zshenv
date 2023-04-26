# Home
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_BIN_HOME=$HOME/.local/bin

# Default apps
export EDITOR=nvim

# Tools
export GOPATH=$XDG_DATA_HOME/go
export GOBIN=$GOPATH/bin
export RUSTUP_HOME=$XDG_DATA_HOME/.rustup
export CARGO_HOME=$XDG_DATA_HOME/.cargo
export CARGO_BIN=$CARGO_HOME/bin

# PATH
export PATH=$PATH:$XDG_BIN_HOME:$GOBIN:$CARGO_BIN

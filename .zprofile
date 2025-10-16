# XDG Base Directories
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_BIN_HOME="${XDG_BIN_HOME:-$HOME/.local/bin}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_OPT_HOME="${XDG_OPT_HOME:-$HOME/.local/opt}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:/run/user/${UID}}"

# Application-specific XDG Base Directory-applied configuration
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"
export GOPATH="${XDG_DATA_HOME}/go"
export GOROOT="${XDG_OPT_HOME}/go"

# Path configuration
export PATH="${PATH}:${XDG_BIN_HOME}"

# Load custom host configuration
if [ -f "${XDG_DATA_HOME}/zsh/profile.zsh" ]; then
  source "${XDG_DATA_HOME}/zsh/profile.zsh"
fi

# XDG Base Directories
export XDG_CACHE_HOME="${XDG_CACHE_HOME:-$HOME/.cache}"
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export XDG_BIN_HOME="${XDG_BIN_HOME:-$HOME/.local/bin}"
export XDG_DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
export XDG_OPT_HOME="${XDG_OPT_HOME:-$HOME/.local/opt}"
export XDG_STATE_HOME="${XDG_STATE_HOME:-$HOME/.local/state}"
export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-/run/user/${UID}}"

# Application-specific XDG Base Directory-applied configuration
export ANSIBLE_HOME="${XDG_CONFIG_HOME}/ansible"
export ANSIBLE_CONFIG="${XDG_CONFIG_HOME}/ansible.cfg"
export ANSIBLE_GALAXY_CACHE_DIR="${XDG_CACHE_HOME}/ansible/galaxy_cache"
export CARGO_HOME="${XDG_DATA_HOME}/cargo"
export DOCKER_CONFIG="${XDG_CONFIG_HOME}/docker"
export GNUPGHOME="${XDG_DATA_HOME}/gnupg"
export GOMODCACHE="${XDG_CACHE_HOME}/go/mod"
export GOPATH="${XDG_DATA_HOME}/go"
export GOROOT="${XDG_OPT_HOME}/go"
export KUBECACHEDIR="${XDG_CACHE_HOME}/kube"
export KUBECONFIG="${XDG_CONFIG_HOME}/kube/config"
export NPM_CONFIG_CACHE="${XDG_CACHE_HOME}/npm"
export NPM_CONFIG_USERCONFIG="${XDG_CONFIG_HOME}/npm/npmrc"
export NVM_DIR="${XDG_DATA_HOME}/nvm"
export TELEPORT_HOME="${XDG_DATA_HOME}/teleport"
export VAGRANT_HOME="${XDG_STATE_HOME}/vagrant"
export W3M_DIR="${XDG_DATA_HOME}/w3m"
export WD_CONFIG="${XDG_CONFIG_HOME}/wd/warppoints"

# Path configuration
export PATH="${GOPATH}/bin:${PATH}"
export PATH="${CARGO_HOME}/bin:${PATH}"
export PATH="${XDG_BIN_HOME}:${PATH}"

# Load custom host configuration
if [ -f "${XDG_DATA_HOME}/zsh/profile.zsh" ]; then
  source "${XDG_DATA_HOME}/zsh/profile.zsh"
fi

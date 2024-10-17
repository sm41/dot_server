# !/#/bash
# set -eux

# XDG
mkdir -p "${XDG_CONFIG_HOME}"
mkdir -p "${XDG_CACHE_HOME}"
mkdir -p "${XDG_DATA_HOME}"
mkdir -p "${XDG_STATE_HOME}"

# /home
mkdir -p "${HOME}/XDG_USER_DIRS/Desktop"
mkdir -p "${HOME}/XDG_USER_DIRS/Downloads"
mkdir -p "${HOME}/XDG_USER_DIRS/Templates"
mkdir -p "${HOME}/XDG_USER_DIRS/Public"
mkdir -p "${HOME}/XDG_USER_DIRS/Documents"
mkdir -p "${HOME}/XDG_USER_DIRS/Music"
mkdir -p "${HOME}/XDG_USER_DIRS/Pictures"
mkdir -p "${HOME}/XDG_USER_DIRS/Videos"

# /home
mkdir -p "${HOME}/repository"


# /mnt
sudo mkdir -p "${SERVER_LOCAL_STORAGE_333}"
sudo mkdir -p "${SERVER_LOCAL_STORAGE_www}"


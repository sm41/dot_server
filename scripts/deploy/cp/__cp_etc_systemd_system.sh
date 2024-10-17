#!/bin/bash
set -eu

REPOSITORY_DIR=/repository
DOTFILES_DIR=/dot_server
ROOT_DIR=/root
FHS_DIR=/etc
ORIGIN_DIR=/systemd/system


while read target_file
do
  sudo cp \
    --interactive \
    --backup=numbered \
    "${HOME}${REPOSITORY_DIR}${DOTFILES_DIR}${ROOT_DIR}${FHS_DIR}${ORIGIN_DIR}/${target_file}" \
    "${FHS_DIR}${ORIGIN_DIR}/${target_file#sample.*}"

done < <(find "${HOME}${REPOSITORY_DIR}${DOTFILES_DIR}${ROOT_DIR}${FHS_DIR}${ORIGIN_DIR}" -type f -printf '%f\n' | sort )

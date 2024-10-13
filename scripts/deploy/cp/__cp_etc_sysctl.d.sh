#!/bin/bash
set -eu

REPOSITORY_DIR=/repository
DOTFILES_DIR=/dot_server
ROOT_DIR=/root
FHS_DIR=/etc
ORIGIN_DIR=/sysctl.d


while read ipv6_conf
do
  sudo cp \
    --interactive \
    --backup=numbered \
    ${HOME}${REPOSITORY_DIR}${DOTFILES_DIR}${ROOT_DIR}${FHS_DIR}${ORIGIN_DIR}/${ipv6_conf} \
    ${FHS_DIR}${ORIGIN_DIR}/${ipv6_conf#sample.*}

done < <(find ${HOME}${REPOSITORY_DIR}${DOTFILES_DIR}${ROOT_DIR}${FHS_DIR}${ORIGIN_DIR} -type f -printf '%f\n' | sort )
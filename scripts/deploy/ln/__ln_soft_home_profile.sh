#!/usr/bin/bash
set -eu

REPOSITORY_DIR=/repository
DOTFILES_DIR=/dot_server
ROOT_DIR=/root
FHS_DIR=/home

aaa=".bash_profile"
fff=".bashrc"
rrr=".profile"

while read USER_PROFILE
do

  if    [[ ! -e "${LOCAL_DIR}"  ]] ; then
    echo "ln -s   "${HOME}${REPOSITORY_DIR}${DOTFILES_DIR}${ROOT_DIR}${FHS_DIR}/sample${USER_PROFILE}"   "${HOME}/${USER_PROFILE}" "

  elif  [[ -L "${LOCAL_DIR}"  ]] ; then
    echo "ln -s -f  "${HOME}${REPOSITORY_DIR}${DOTFILES_DIR}${ROOT_DIR}${FHS_DIR}/sample${USER_PROFILE}"   "${HOME}/${USER_PROFILE}" "

  elif  [[ ! -L "${LOCAL_DIR}"  ]] ; then
    echo "ln -s -b  "${HOME}${REPOSITORY_DIR}${DOTFILES_DIR}${ROOT_DIR}${FHS_DIR}/sample${USER_PROFILE}"   "${HOME}/${USER_PROFILE}" "

  fi


done << edf
  ${aaa}
  ${fff}
  ${rrr}
edf

exit 0

# source "${HOME}/.bash_profile"

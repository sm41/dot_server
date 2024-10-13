# !/bin/bash
set -eux

input_file=git_repo.txt
work_path=$(realpath $(dirname "$0"))

cd ${HOME}/repository


while read repository_url
do

  [ -z ${repository_url} ] && continue
  [ ${repository_url::1} = "#" ] && continue

  git clone ${repository_url}.git

done < ${work_path}/${input_file}


# !/bin/bash
# set -eux

input_file=git_repo.txt
work_path=$(realpath $(dirname "$0"))


source ${work_path}/${input_file}

# cd ${HOME}/repository

while read repository_url
do

  [[ -z "${repository_url}" ]] && continue
  [[ "${repository_url::1}" = "#" ]] && continue
  [[ ! "${repository_url}" =~ ^declare ]] && continue

  var_name=$(echo "${repository_url}" |grep -oP '(?<=declare -A ).*(?==\()')
  declare -n var_array=${var_name}

  echo ${var_array[title]}
  # git clone ${repository_url}.git

done < ${work_path}/${input_file}


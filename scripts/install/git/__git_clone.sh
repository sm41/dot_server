# !/bin/bash
set -eu

work_path="$(realpath $(dirname "$0"))"
input_file="$(find ${work_path}  -not \( -path $0 \)  -type f  -printf "%f\n")"

source "${work_path}/${input_file}"

# cd ${HOME}/repository

while read arr_repo
do

  [[ -z "${arr_repo}" ]] && continue
  [[ "${arr_repo::1}" = "#" ]] && continue
  [[ ! "${arr_repo}" =~ ^declare ]] && continue

  # var_name=$(echo "${arr_repo}" |grep -oP '(?<=declare -A ).*(?==\()')
  var_name=$(grep -oP '(?<=declare -A ).*(?==\()'  <<<  "${arr_repo}")
  declare -n var_array="${var_name}"

  # echo "repository_URL  : ${var_array[url]}"
  # echo "repository_NAME : ${var_array[url]##*/}"
  git clone "${var_array[url]".git

done < "${work_path}/${input_file}"


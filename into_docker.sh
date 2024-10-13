# !/#/bash

# 日々 - にゃののん日記
# https://nyanonon.hatenablog.com/entry/20200731/1596207567

# l3tnun/EPGStation: Mirakurun を使用した録画管理ソフト
# https://github.com/l3tnun/EPGStation



inner_path=/app/config
filename=epgstation_backup_$(date +\%Y-\%m-\%d).json
container_ID=

# into the "docker container"
docker exec -i -t ${container_ID} bash

# make backup_file
docker exec -d ${container_ID} npm run backup ${inner_path}/${filename}

# cp file in "docker container" to client
docker cp ${container_ID}:${inner_path}/${filename}    ${HOME}/${filename}

# delete backup_file
docker exec -i -t ${container_ID} bash && \
rm ${inner_path}/${filename}

# view all key
cat ${filename} | jq keys_unsorted

# del
cat ${filename} | jq 'del (.recordedHistoryItems)'


"dropLogFileItems"     :
"recordedHistoryItems" :
"recordedItems"        : 録画済み番組情報
"recordedTagItems"     :
"reserveItems"         : 予約情報
"ruleItems"            : 録画予約ルール
"thumbnailItems"       :
"videoFileItems"       :



# !/#/bash
# set -eux

home=${HOME}
inner_path=/app
filename=epgstation_hogefuga_$(date +\%Y-\%m-\%d).json
container_ID=67c39a4b41f7

# make backup_fule
docker exec -d ${container_ID} npm run backup ${inner_path}/${filename}

# cp file in "docker container" to client
docker cp ${container_ID}:${inner_path}/${filename} ${home}/${filename}


# delete backup_file
# docker exec -d ${container_ID} bash && rm ${inner_path}/${filename}

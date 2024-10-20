# !/#/bash
set -eu

echo    "[ 📢  create {samba user} ]"
read -p "・Input \"samba user\"  ==>  "  SAMBA_USER

# create user
echo  "sudo adduser  --system  --no-create-home  --disabled-login   "${SAMBA_USER}"  "

# Register user
echo  "sudo pdbedit -a -u "${SAMBA_USER}"  "


# change files owner
# sudo chown -R "${USER}":"${USER}" "${SERVER_LOCAL_STORAGE_333}"
# sudo chown -R "${USER}":"${USER}" "${SERVER_LOCAL_STORAGE_www}"
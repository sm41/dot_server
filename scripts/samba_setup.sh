# !/#/bash

echo    "[ 🗨️  create \"samba user\" ]"
read -p "Input \"samba user\"  ==>  "  SAMBA_USER

echo ${SAMBA_USER}
exit 0

# create user
sudo adduser  --system  --no-create-home  --disabled-login   ${SAMBA_USER}


# Register user
sudo pdbedit -a -u ${SAMBA_USER}


# change files owner
sudo chown -R ${USER}:${USER} /mnt/data1
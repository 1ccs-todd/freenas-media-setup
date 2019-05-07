iocage create -n "__RADARR_JAIL__" -r __IOCAGE_RELEASE__ ip4_addr="__DEFAULT_INTERFACE__|__RADARR_IP__/__DEFAULT_CIDR__" defaultrouter="__DEFAULT_ROUTER__" vnet="on" allow_raw_sockets="1" boot="on"

# Update to Latest Repo
iocage exec __RADARR_JAIL__ "mkdir -p /usr/local/etc/pkg/repos"
iocage exec __RADARR_JAIL__ "echo -e 'FreeBSD: { url: \"pkg+http://pkg.FreeBSD.org/\${ABI}/latest\" }' > /usr/local/etc/pkg/repos/FreeBSD.conf"

# Install pkgs
iocage exec __RADARR_JAIL__ pkg install -y mono mediainfo sqlite3 curl

iocage exec __RADARR_JAIL__ mkdir -p /config
iocage exec __RADARR_JAIL__ mkdir -p  /mnt/downloads
iocage exec __RADARR_JAIL__ mkdir -p /mnt/movies
iocage fstab -a __RADARR_JAIL__ __APPS_ROOT__/radarr /config nullfs rw 0 0
iocage fstab -a __RADARR_JAIL__ __MEDIA_ROOT__/downloads /mnt/downloads nullfs rw 0 0
iocage fstab -a __RADARR_JAIL__ __MEDIA_ROOT__/movies /mnt/movies nullfs rw 0 0

iocage exec __RADARR_JAIL__ ln -s /usr/local/bin/mono /usr/bin/mono
iocage exec __RADARR_JAIL__ "fetch __RADARR_FETCH_URL__ -o /usr/local/share"
iocage exec __RADARR_JAIL__ "tar -xzvf __RADARR_FETCH_PATH__ -C /usr/local/share"
iocage exec __RADARR_JAIL__ rm __RADARR_FETCH_PATH__

## Media Permissions
iocage exec __RADARR_JAIL__ "pw user add __RADARR_USER__ -c radarr -u __RADARR_UID__ -d /nonexistent -s /usr/bin/nologin"

iocage exec __RADARR_JAIL__ "pw user add __MEDIA_USER__ -c media -u __MEDIA_UID__ -d /nonexistent -s /usr/bin/nologin"
iocage exec __RADARR_JAIL__ "pw groupadd -n __MEDIA_GROUP__ -g __MEDIA_GID__"
iocage exec __RADARR_JAIL__ "pw groupmod __MEDIA_GROUP__ -m __RADARR_USER__"
iocage exec __RADARR_JAIL__ chown -R __MEDIA_USER__:__MEDIA_GROUP__ /usr/local/share/Radarr /config
iocage exec __RADARR_JAIL__ sysrc 'radarr_user=__MEDIA_USER__'
iocage exec __RADARR_JAIL__ service radarr start
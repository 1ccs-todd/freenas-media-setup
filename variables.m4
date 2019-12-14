define(__IOCAGE_RELEASE__,11.3-RELEASE)dnl
dnl
define(__POOL__,myVol)dnl
define(__POOL_ROOT__,/mnt/__POOL__)dnl
define(__APPS_DATASET__,apps)dnl
define(__APPS_ROOT__,__POOL_ROOT__/__APPS_DATASET__)dnl
define(__IOCAGE_DATASET__,iocage)dnl
define(__IOCAGE_ROOT__,__POOL_ROOT__/__IOCAGE_DATASET__)dnl
define(__MEDIA_DATASET__,media)dnl
define(__MEDIA_ROOT__,__POOL_ROOT__/__MEDIA_DATASET__)dnl
dnl
define(__SONARR_DOWNLOADS__,sonarr)dnl
define(__SONARR_COMPLETED__,series)dnl
define(__RADARR_DOWNLOADS__,radarr)dnl
define(__RADARR_COMPLETED__,movies)dnl
define(__LIDARR_DOWNLOADS__,lidarr)dnl
define(__LIDARR_COMPLETED__,music)dnl
dnl
define(__MEDIA_USER__,media)dnl
define(__MEDIA_GROUP__,media)dnl
define(__MEDIA_UID__,8675309)dnl
define(__MEDIA_GID__,8675309)dnl
define(__DEFAULT_ROUTER__,10.68.69.1)dnl
define(__DEFAULT_CIDR__,24)dnl
define(__DEFAULT_INTERFACE__,vnet0)dnl
dnl
define(__JACKETT_JAIL__,jackett)dnl
define(__JACKETT_IP__,10.68.69.20)dnl
define(__JACKETT_VERSION__,v0.12.1115)dnl
define(__JACKETT_FETCH_URL__,https://github.com/Jackett/Jackett/releases/download/__JACKETT_VERSION__/Jackett.Binaries.Mono.tar.gz)dnl
define(__JACKETT_FETCH_PATH__,/usr/local/share/Jackett.Binaries.Mono.tar.gz)dnl
define(__JACKETT_USER__,jackett)dnl
define(__JACKETT_GROUP__,jackett)dnl
define(__JACKETT_UID__,818)dnl
dnl
define(__ORGANIZR_JAIL__,organizr)dnl
define(__ORGANIZR_IP__,10.68.69.21)dnl
define(__ORGANIZR_REPO__,https://github.com/causefx/Organizr.git)dnl
define(__ORGANIZR_BRANCH__,v2-master)dnl
define(__ORGANIZR_USER__,www)dnl
define(__ORGANIZR_GROUP__,www)dnl
define(__ORGANIZR_LISTEN_MODE__,0660)dnl
dnl
define(__PLEX_JAIL__,[[[plex]]])dnl
define(__PLEX_IP__,10.68.69.22)dnl
dnl
define(__RADARR_JAIL__,radarr)dnl
define(__RADARR_IP__,10.68.69.23)dnl
define(__RADARR_VERSION__,v0.2.0.1217)dnl
define(__RADARR_FETCH_URL__,https://github.com/Radarr/Radarr/releases/download/__RADARR_VERSION__/Radarr.develop.__RADARR_VERSION__.linux.tar.gz)dnl
define(__RADARR_FETCH_PATH__,/usr/local/share/Radarr.__RADARR_VERSION__.linux.tar.gz)dnl
define(__RADARR_USER__,radarr)dnl
define(__RADARR_GROUP__,radarr)dnl
define(__RADARR_UID__,352)dnl
dnl
define(__SONARR_JAIL__,sonarr)dnl
define(__SONARR_IP__,10.68.69.24)dnl
define(__SONARR_VERSION__,v3.0.0.334)dnl
define(__SONARR_FETCH_URL__,http://services.sonarr.tv/v1/download/phantom/latest?version=3&os=linux)dnl
define(__SONARR_FETCH_PATH__,/usr/local/share/Sonarr.phantom.__SONARR_VERSION__.linux.tar.gz)dnl
define(__SONARR_USER__,sonarr)dnl
define(__SONARR_GROUP__,sonarr)dnl
define(__SONARR_UID__,351)dnl
dnl
define(__TAUTULLI_JAIL__,tautulli)dnl
define(__TAUTULLI_IP__,10.68.69.25)dnl
define(__TAUTULLI_REPO__,https://github.com/Tautulli/Tautulli.git)dnl
define(__TAUTULLI_USER__,tautulli)dnl
define(__TAUTULLI_GROUP__,tautulli)dnl
define(__TAUTULLI_UID__,109)dnl
dnl
define(__TRANSMISSION_JAIL__,transmission)dnl
define(__TRANSMISSION_IP__,10.68.69.26)dnl
define(__TRANSMISSION_USER__,transmission)dnl
define(__TRANSMISSION_GROUP__,transmission)dnl
dnl
define(__LIDARR_JAIL__,lidarr)dnl
define(__LIDARR_IP__,10.68.69.27)dnl
define(__LIDARR_VERSION__,v0.7.1.1381)dnl
define(__LIDARR_FETCH_URL__,https://github.com/lidarr/Lidarr/releases/download/__LIDARR_VERSION__/Lidarr.master.patsubst(__LIDARR_VERSION__,v).linux.tar.gz)dnl
define(__LIDARR_FETCH_PATH__,/usr/local/share/Lidarr.master.__LIDARR_VERSION__.linux.tar.gz)dnl
define(__LIDARR_USER__,lidarr)dnl
define(__LIDARR_GROUP__,lidarr)dnl
define(__LIDARR_UID__,353)dnl
dnl

=============SERVER DETAILS=====================
CentOS Linux release 7.6.1810 (Core) 
# dmidecode 3.1
Getting SMBIOS data from sysfs.
SMBIOS 2.7 present.

Handle 0x0100, DMI type 1, 27 bytes
System Information
	Manufacturer: Xen
	Product Name: HVM domU
	Version: 4.2.amazon
	Serial Number: ec2134c9-d18d-973b-070a-5fd53152b9a5
	UUID: ec2134c9-d18d-973b-070a-5fd53152b9a5
	Wake-up Type: Power Switch
	SKU Number: Not Specified
	Family: Not Specified

Handle 0x2000, DMI type 32, 11 bytes
System Boot Information
	Status: No errors detected

Linux sunmari562.mylabserver.com 3.10.0-957.10.1.el7.x86_64 #1 SMP Mon Mar 18 15:06:45 UTC 2019 x86_64 x86_64 x86_64 GNU/Linux
Sat Mar 23 17:16:27 UTC 2019
 17:16:27 up 22 min,  2 users,  load average: 0.16, 0.05, 0.04
=============DF Output===================
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1       20G  6.0G   15G  30% /
devtmpfs        887M     0  887M   0% /dev
tmpfs           919M     0  919M   0% /dev/shm
tmpfs           919M   17M  902M   2% /run
tmpfs           919M     0  919M   0% /sys/fs/cgroup
tmpfs           184M     0  184M   0% /run/user/1001
tmpfs           184M     0  184M   0% /run/user/0
tmpfs           184M     0  184M   0% /run/user/1004
==============DF Count ==============
9
===============VGDISPLAY=====================
=========================NFS Exported FS================
===============FSTAB DETAILS=====================

#
# /etc/fstab
# Created by anaconda on Mon Sep 29 21:48:54 2014
#
# Accessible filesystems, by reference, are maintained under '/dev/disk'
# See man pages fstab(5), findfs(8), mount(8) and/or blkid(8) for more info
#
UUID=0f790447-ebef-4ca0-b229-d0aa1985d57f /                       xfs     defaults        1 1
/root/swap swap swap sw 0 0 
================NETWORK DETAILS====================
Kernel IP routing table
Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
0.0.0.0         172.31.16.1     0.0.0.0         UG        0 0          0 eth0
172.31.16.0     0.0.0.0         255.255.240.0   U         0 0          0 eth0
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
tcp        0      0 0.0.0.0:111             0.0.0.0:*               LISTEN      1/systemd           
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      4421/sshd           
tcp        0      0 127.0.0.1:3350          0.0.0.0:*               LISTEN      4423/xrdp-sesman    
tcp        0      0 127.0.0.1:25            0.0.0.0:*               LISTEN      4384/master         
tcp        0      0 0.0.0.0:3389            0.0.0.0:*               LISTEN      4424/xrdp           
tcp        0      0 0.0.0.0:6080            0.0.0.0:*               LISTEN      4470/python         
tcp6       0      0 :::111                  :::*                    LISTEN      1/systemd           
tcp6       0      0 :::80                   :::*                    LISTEN      4267/httpd          
tcp6       0      0 :::22                   :::*                    LISTEN      4421/sshd           
tcp6       0      0 ::1:25                  :::*                    LISTEN      4384/master         
tcp6       0      0 :::31297                :::*                    LISTEN      4256/node           
udp        0      0 0.0.0.0:68              0.0.0.0:*                           4067/dhclient       
udp        0      0 0.0.0.0:55395           0.0.0.0:*                           3689/avahi-daemon:  
udp        0      0 0.0.0.0:111             0.0.0.0:*                           1/systemd           
udp        0      0 0.0.0.0:5353            0.0.0.0:*                           3689/avahi-daemon:  
udp        0      0 0.0.0.0:894             0.0.0.0:*                           3691/rpcbind        
udp6       0      0 :::111                  :::*                                1/systemd           
udp6       0      0 :::894                  :::*                                3691/rpcbind        
================Lan Details===========
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 9001
        inet 172.31.26.215  netmask 255.255.240.0  broadcast 172.31.31.255
        inet6 fe80::40f:55ff:fe1e:dc2a  prefixlen 64  scopeid 0x20<link>
        ether 06:0f:55:1e:dc:2a  txqueuelen 1000  (Ethernet)
        RX packets 11797  bytes 13086710 (12.4 MiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 6013  bytes 747077 (729.5 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 58  bytes 5120 (5.0 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 58  bytes 5120 (5.0 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

-rw-r--r--. 1 root root 254 Aug 24  2018 /etc/sysconfig/network-scripts/ifcfg-lo
-rw-r--r--. 1 root root 159 Mar  7 16:22 /etc/sysconfig/network-scripts/ifcfg-eth0
# Created by cloud-init on instance boot automatically, do not edit.
#
BOOTPROTO=dhcp
DEVICE=eth0
HWADDR=06:0f:55:1e:dc:2a
ONBOOT=yes
TYPE=Ethernet
USERCTL=no
DEVICE=lo
IPADDR=127.0.0.1
NETMASK=255.0.0.0
NETWORK=127.0.0.0
# If you're having problems with gated making 127.0.0.0/8 a martian,
# you can change this to something else (255.255.255.255, for example)
BROADCAST=127.255.255.255
ONBOOT=yes
NAME=loopback
================Disk Status/Multipathing ====================

Disk /dev/xvda: 21.5 GB, 21474836480 bytes, 41943040 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk label type: dos
Disk identifier: 0x000aec37

    Device Boot      Start         End      Blocks   Id  System
/dev/xvda1   *        2048    41943006    20970479+  83  Linux
Mar 23 17:20:28 | DM multipath kernel driver not loaded
Mar 23 17:20:28 | /etc/multipath.conf does not exist, blacklisting all devices.
Mar 23 17:20:28 | A default multipath.conf file is located at
Mar 23 17:20:28 | /usr/share/doc/device-mapper-multipath-0.4.9/multipath.conf
Mar 23 17:20:28 | You can run /sbin/mpathconf --enable to create
Mar 23 17:20:28 | /etc/multipath.conf. See man mpathconf(8) for more details
Mar 23 17:20:28 | DM multipath kernel driver not loaded
================FC/SCSI Details===========
================Running DBs ===========
root      7185  6091  0 17:20 pts/1    00:00:00 grep -i pmon
=============Installed Pkg Details ==========
libestr-0.1.9-2.el7.x86_64
libblockdev-2.18-3.el7.x86_64
cups-pk-helper-0.2.6-2.el7.x86_64
gssproxy-0.7.0-21.el7.x86_64
nm-connection-editor-1.8.6-2.el7.x86_64
libxkbfile-1.0.9-3.el7.x86_64
dracut-network-033-554.el7.x86_64
make-3.82-23.el7.x86_64
sed-4.2.2-5.el7.x86_64
gmp-6.0.0-15.el7.x86_64
libinput-1.10.7-2.el7.x86_64
flatpak-1.0.2-4.el7_6.x86_64
nfs-utils-1.3.0-0.61.el7.x86_64
libxshmfence-1.2-1.el7.x86_64
kbd-legacy-1.15.5-15.el7.noarch
xml-common-0.6.3-39.el7.noarch
perl-PlRPC-0.2020-14.el7.noarch
cpio-2.11-27.el7.x86_64
gstreamer1-plugins-bad-free-1.10.4-3.el7.x86_64
colord-libs-1.3.4-1.el7.x86_64
librsvg2-2.40.20-1.el7.x86_64
apr-1.4.8-3.el7_4.1.x86_64
rsync-3.1.2-4.el7.x86_64
libpwquality-1.2.3-5.el7.x86_64
libbluray-0.2.3-5.el7.x86_64
firewalld-filesystem-0.5.3-5.el7.noarch
which-2.20-7.el7.x86_64
control-center-filesystem-3.28.1-4.el7.x86_64
gtk3-3.22.30-3.el7.x86_64
openssl-1.0.2k-16.el7_6.1.x86_64
newt-0.52.15-4.el7.x86_64
libpcap-1.5.3-11.el7.x86_64
gnome-settings-daemon-3.28.1-2.el7.x86_64
python-six-1.9.0-2.el7.noarch
shadow-utils-4.1.5.1-25.el7_6.1.x86_64
perl-Text-ParseWords-3.29-4.el7.noarch
nautilus-3.26.3.1-2.el7.x86_64
mariadb-libs-5.5.60-1.el7_5.x86_64
xorg-x11-server-common-1.20.1-5.3.el7_6.x86_64
libwayland-server-1.15.0-1.el7.x86_64
perl-Time-Local-1.2300-2.el7.noarch
NetworkManager-glib-1.12.0-10.el7_6.x86_64
libsecret-0.18.6-1.el7.x86_64
perl-threads-1.87-4.el7.x86_64
cheese-libs-3.28.0-1.el7.x86_64
readline-6.2-10.el7.x86_64
gnome-shell-extension-places-menu-3.28.1-5.el7.noarch
acl-2.2.51-14.el7.x86_64
grep-2.20-3.el7.x86_64
file-5.11-35.el7.x86_64
gnome-classic-session-3.28.1-5.el7.noarch
libnfsidmap-0.25-19.el7.x86_64
libldb-1.3.4-1.el7.x86_64
xorg-x11-drv-wacom-0.36.1-1.el7.x86_64
pycairo-1.8.10-8.el7.x86_64
openjpeg-libs-1.5.1-18.el7.x86_64
python2-pyatspi-2.26.0-3.el7.noarch
nss-softokn-3.36.0-5.el7_5.x86_64
libsoup-2.62.2-2.el7.x86_64
vim-enhanced-7.4.160-5.el7.x86_64
plymouth-core-libs-0.8.9-0.31.20140113.el7.centos.x86_64
libwebp-0.3.0-7.el7.x86_64
dbus-python-1.1.1-9.el7.x86_64
nettle-2.7.1-8.el7.x86_64
ruby-2.0.0.648-34.el7_6.x86_64
openoffice-en-US-calc-4.1.1-9775.x86_64
mozjs52-52.9.0-1.el7.x86_64
wget-1.14-18.el7.x86_64
openoffice-calc-4.1.1-9775.x86_64
libsepol-devel-2.5-10.el7.x86_64
compat-libical1-1.0.1-2.el7.x86_64
virt-what-1.18-4.el7.x86_64
openoffice-images-4.1.1-9775.x86_64
libseccomp-2.3.1-3.el7.x86_64
fribidi-1.0.2-1.el7.x86_64
openoffice-brand-draw-4.1.1-9775.x86_64
rpm-build-libs-4.11.3-35.el7.x86_64
libdvdnav-5.0.3-1.el7.x86_64
openoffice-ooofonts-4.1.1-9775.x86_64
abattis-cantarell-fonts-0.0.25-1.el7.noarch
libxml2-python-2.9.1-6.el7_2.3.x86_64
perl-Test-Harness-3.28-3.el7.noarch
libXext-1.3.3-3.el7.x86_64
glibc-common-2.17-260.el7_6.3.x86_64
plymouth-scripts-0.8.9-0.31.20140113.el7.centos.x86_64
ghostscript-fonts-5.50-32.el7.noarch
dracut-033-554.el7.x86_64
mesa-libgbm-18.0.5-4.el7_6.x86_64
libdrm-2.4.91-3.el7.x86_64
python-pycurl-7.19.0-19.el7.x86_64
speex-1.2-0.19.rc1.el7.x86_64
xorg-x11-xauth-1.0.9-1.el7.x86_64
grub2-tools-2.02-0.76.el7.centos.1.x86_64
pyserial-2.6-6.el7.noarch
upower-0.99.7-1.el7.x86_64
libXaw-1.0.13-4.el7.x86_64
nss-sysinit-3.36.0-7.1.el7_6.x86_64
PyYAML-3.10-11.el7.x86_64
libexif-0.6.21-6.el7.x86_64
perl-macros-5.16.3-294.el7_6.x86_64
ImageMagick-6.7.8.9-16.el7_6.x86_64
osinfo-db-tools-1.1.0-1.el7.x86_64
policycoreutils-python-2.5-29.el7_6.1.x86_64
sqlite-3.7.17-8.el7.x86_64
bolt-0.4-3.el7.x86_64
xorgxrdp-0.2.9-1.el7.x86_64
cronie-1.4.11-20.el7_6.x86_64
redhat-menus-12.0.2-8.el7.noarch
kernel-3.10.0-957.5.1.el7.x86_64
libxml2-2.9.1-6.el7_2.3.x86_64
mdadm-4.1-rc1_2.el7.x86_64
adwaita-icon-theme-3.28.0-1.el7.noarch
perl-Compress-Raw-Zlib-2.061-4.el7.x86_64
libX11-common-1.6.5-2.el7.noarch
ntpdate-4.2.6p5-28.el7.centos.x86_64
libvisual-0.4.0-16.el7.x86_64
libdaemon-0.14-7.el7.x86_64
git-1.8.3.1-20.el7.x86_64
at-spi2-core-2.28.0-1.el7.x86_64
python-slip-dbus-0.4.0-4.el7.noarch
lzo-2.06-8.el7.x86_64
libappstream-glib-0.7.8-2.el7.x86_64
openssl-libs-1.0.2k-16.el7_6.1.x86_64
gtk2-2.24.31-1.el7.x86_64
libsepol-2.5-10.el7.x86_64
webkitgtk4-plugin-process-gtk2-2.20.5-1.el7.x86_64
xorg-x11-xinit-1.3.4-2.el7.x86_64
libuuid-2.23.2-59.el7_6.1.x86_64
coreutils-8.22-23.el7.x86_64
nautilus-extensions-3.26.3.1-2.el7.x86_64
perl-podlators-2.5.1-3.el7.noarch
NetworkManager-1.12.0-10.el7_6.x86_64
ruby-libs-2.0.0.648-34.el7_6.x86_64
gnome-session-3.28.1-6.el7.x86_64
perl-Storable-2.45-3.el7.x86_64
color-filesystem-1-13.el7.noarch
ModemManager-glib-1.6.10-1.el7.x86_64
tuned-2.10.0-6.el7_6.3.noarch
oddjob-0.31.5-4.el7.x86_64
atk-2.28.1-1.el7.x86_64
ibus-setup-1.5.17-2.el7.noarch
perl-File-Temp-0.23.01-3.el7.noarch
libXrender-0.9.10-1.el7.x86_64
libgomp-4.8.5-36.el7_6.1.x86_64
centos-release-7-6.1810.2.el7.centos.x86_64
gjs-1.52.3-1.el7.x86_64
snappy-1.1.0-3.el7.x86_64
libwayland-cursor-1.15.0-1.el7.x86_64
gnome-shell-extension-top-icons-3.28.1-5.el7.noarch
libical-3.0.3-2.el7.x86_64
xorg-x11-drv-fbdev-0.5.0-1.el7.x86_64
xz-libs-5.2.2-1.el7.x86_64
libtirpc-0.2.4-0.15.el7.x86_64
gnupg2-2.0.22-5.el7_5.x86_64
perl-Socket-2.010-4.el7.x86_64
libsemanage-python-2.5-14.el7.x86_64
poppler-glib-0.26.5-20.el7.x86_64
libgtop2-2.38.0-3.el7.x86_64
libtasn1-4.10-1.el7.x86_64
rubygem-json-1.7.7-34.el7_6.x86_64
libdmx-1.1.3-3.el7.x86_64
xz-5.2.2-1.el7.x86_64
rsyslog-8.24.0-34.el7.x86_64
openoffice-ure-4.1.1-9775.x86_64
yum-metadata-parser-1.1.4-10.el7.x86_64
ca-certificates-2018.2.22-70.0.el7_5.noarch
authconfig-6.2.8-30.el7.x86_64
libcom_err-devel-1.42.9-13.el7.x86_64
openoffice-en-US-impress-4.1.1-9775.x86_64
avahi-glib-0.6.31-19.el7.x86_64
libselinux-utils-2.5-14.1.el7.x86_64
xorg-x11-font-utils-7.5-21.el7.x86_64
openoffice-core04-4.1.1-9775.x86_64
telepathy-glib-0.24.1-1.el7.x86_64
openoffice-writer-4.1.1-9775.x86_64
mozjs17-17.0.0-20.el7.x86_64
m4-1.4.16-10.el7.x86_64
rpm-libs-4.11.3-35.el7.x86_64
python-websockify-0.6.0-2.el7.noarch
openoffice-ogltrans-4.1.1-9775.x86_64
libXdmcp-1.1.2-6.el7.x86_64
libevent-2.0.21-4.el7.x86_64
autoconf-2.69-11.el7.noarch
libyaml-0.1.4-11.el7_0.x86_64
libfastjson-0.99.4-3.el7.x86_64
grub2-common-2.02-0.76.el7.centos.1.noarch
openoffice-xsltfilter-4.1.1-9775.x86_64
centos-logos-70.0.6-3.el7.centos.noarch
readline-devel-6.2-10.el7.x86_64
selinux-policy-3.13.1-229.el7_6.9.noarch
numactl-libs-2.0.9-7.el7.x86_64
dconf-0.28.0-4.el7.x86_64
device-mapper-event-1.02.149-10.el7_6.3.x86_64
hicolor-icon-theme-0.12-7.el7.noarch
python-prettytable-0.7.2-3.el7.noarch
samba-common-4.8.3-4.el7.noarch
libxklavier-5.4-7.el7.x86_64
python-babel-0.9.6-8.el7.noarch
geoclue2-libs-2.4.8-1.el7.x86_64
mesa-dri-drivers-18.0.5-4.el7_6.x86_64
xorg-x11-server-utils-7.7-20.el7.x86_64
clutter-1.26.2-2.el7.x86_64
libpng-1.5.13-7.el7_2.x86_64
selinux-policy-targeted-3.13.1-229.el7_6.9.noarch
libiptcdata-1.0.4-11.el7.x86_64
usbmuxd-1.1.0-1.el7.x86_64
rpcbind-0.2.0-47.el7.x86_64
tracker-1.10.5-6.el7.x86_64
iscsi-initiator-utils-6.2.0.874-10.el7.x86_64
xrdp-0.9.9-1.el7.x86_64
enchant-1.6.0-8.el7.x86_64
libblockdev-part-2.18-3.el7.x86_64
liberation-fonts-common-1.07.2-16.el7.noarch
libcap-ng-0.7.5-4.el7.x86_64
libwacom-data-0.30-1.el7.noarch
webrtc-audio-processing-0.3-1.el7.x86_64
systemd-libs-219-62.el7_6.5.x86_64
lapack-3.4.2-8.el7.x86_64
vte-profile-0.52.2-2.el7.x86_64
libnotify-0.7.7-1.el7.x86_64
python-pygments-1.4-10.el7.noarch
fontconfig-2.13.0-4.3.el7.x86_64
perl-IO-Compress-2.061-2.el7.noarch
avahi-0.6.31-19.el7.x86_64
psmisc-22.20-15.el7.x86_64
libglvnd-glx-1.0.1-0.8.git5baa1e5.el7.x86_64
keyutils-libs-1.5.8-3.el7.x86_64
openssh-clients-7.4p1-16.el7.x86_64
cairo-gobject-1.15.12-3.el7.x86_64
perl-Git-1.8.3.1-20.el7.noarch
libidn-1.28-4.el7.x86_64
gnome-themes-standard-3.28-2.el7.x86_64
python-firewall-0.5.3-5.el7.noarch
xdg-desktop-portal-1.0.2-1.el7.x86_64
kernel-tools-libs-3.10.0-957.10.1.el7.x86_64
libproxy-0.4.11-11.el7.x86_64
libtool-ltdl-2.4.2-22.el7_3.x86_64
gnome-online-accounts-3.28.0-1.el7.x86_64
iputils-20160308-10.el7.x86_64
libcom_err-1.42.9-13.el7.x86_64
libblkid-2.23.2-59.el7_6.1.x86_64
libnfnetlink-1.0.1-4.el7.x86_64
perl-Pod-Perldoc-3.20-4.el7.noarch
evolution-data-server-3.28.5-1.el7.x86_64
libjpeg-turbo-1.2.90-6.el7.x86_64
libsmartcols-2.23.2-59.el7_6.1.x86_64
keyutils-1.5.8-3.el7.x86_64
python-backports-ssl_match_hostname-3.5.0.1-1.el7.noarch
libcap-2.22-9.el7.x86_64
perl-Exporter-5.68-3.el7.noarch
libgnomekbd-3.26.0-1.el7.x86_64
colord-1.3.4-1.el7.x86_64
python-2.7.5-76.el7.x86_64
pth-2.0.7-23.el7.x86_64
NetworkManager-wifi-1.12.0-10.el7_6.x86_64
tcp_wrappers-7.6-77.el7.x86_64
libXfixes-5.0.3-1.el7.x86_64
perl-File-Path-2.09-2.el7.noarch
ibus-1.5.17-2.el7.x86_64
python-pyudev-0.15-9.el7.noarch
libwayland-egl-1.15.0-1.el7.x86_64
nss-pem-1.0.3-5.el7_6.1.x86_64
libXtst-1.2.3-1.el7.x86_64
gnome-shell-extension-common-3.28.1-5.el7.noarch
harfbuzz-1.7.5-2.el7.x86_64
libmnl-1.0.3-7.el7.x86_64
libdb-utils-5.3.21-24.el7.x86_64
libnl3-3.2.28-4.el7.x86_64
tigervnc-server-minimal-1.8.0-13.el7.x86_64
libglvnd-1.0.1-0.8.git5baa1e5.el7.x86_64
libverto-0.2.5-4.el7.x86_64
gstreamer1-1.10.4-2.el7.x86_64
xorg-x11-drv-nouveau-1.0.15-1.el7.x86_64
libudisks2-2.7.3-8.el7.x86_64
cracklib-dicts-2.9.0-11.el7.x86_64
fontpackages-filesystem-1.44-8.el7.noarch
xorg-x11-drv-v4l-0.2.0-49.el7.x86_64
libref_array-0.1.5-32.el7.x86_64
pulseaudio-libs-10.0-5.el7.x86_64
libXxf86vm-1.1.4-1.el7.x86_64
spice-vdagent-0.14.0-16.el7.x86_64
geocode-glib-3.26.0-2.el7.x86_64
pixman-0.34.0-1.el7.x86_64
python-decorator-3.4.0-3.el7.noarch
dhcp-common-4.2.5-68.el7.centos.1.x86_64
pulseaudio-libs-glib2-10.0-5.el7.x86_64
audit-libs-python-2.8.4-4.el7.x86_64
audit-2.8.4-4.el7.x86_64
rubygems-2.0.14.1-34.el7_6.noarch
plymouth-graphics-libs-0.8.9-0.31.20140113.el7.centos.x86_64
dracut-config-rescue-033-554.el7.x86_64
oddjob-mkhomedir-0.31.5-4.el7.x86_64
libss-1.42.9-13.el7.x86_64
pyxattr-0.5.1-5.el7.x86_64
openoffice-en-US-help-4.1.1-9775.x86_64
libcdio-0.92-3.el7.x86_64
pyliblzma-0.5.3-11.el7.x86_64
openoffice-core03-4.1.1-9775.x86_64
bison-3.0.4-2.el7.x86_64
openoffice-math-4.1.1-9775.x86_64
libevdev-1.5.6-1.el7.x86_64
python-backports-1.0-8.el7.x86_64
openoffice-brand-impress-4.1.1-9775.x86_64
xorg-x11-drivers-7.7-6.el7.x86_64
novnc-0.5.1-2.el7.noarch
device-mapper-persistent-data-0.7.3-3.el7.x86_64
yum-plugin-fastestmirror-1.1.31-50.el7.noarch
perl-Data-Dumper-2.145-3.el7.x86_64
openoffice-pyuno-4.1.1-9775.x86_64
procps-ng-3.3.10-23.el7.x86_64
libverto-devel-0.2.5-4.el7.x86_64
plymouth-plugin-label-0.8.9-0.31.20140113.el7.centos.x86_64
OpenEXR-libs-1.7.1-7.el7.x86_64
btrfs-progs-4.9.1-1.el7.x86_64
mesa-libglapi-18.0.5-4.el7_6.x86_64
elfutils-libs-0.172-2.el7.x86_64
libvorbis-1.3.3-8.el7.1.x86_64
libXmu-1.1.2-2.el7.x86_64
device-mapper-event-libs-1.02.149-10.el7_6.3.x86_64
libblockdev-utils-2.18-3.el7.x86_64
libyaml-devel-0.1.4-11.el7_0.x86_64
ppp-2.4.5-33.el7.x86_64
accountsservice-0.6.50-2.el7.x86_64
GConf2-3.2.6-8.el7.x86_64
libXft-2.3.2-2.el7.x86_64
samba-common-libs-4.8.3-4.el7.x86_64
gpgme-1.3.2-5.el7.x86_64
fipscheck-1.4.1-6.el7.x86_64
krb5-devel-1.15.1-37.el7_6.x86_64
python-cheetah-2.4.4-5.el7.centos.x86_64
mesa-libGL-18.0.5-4.el7_6.x86_64
giflib-4.1.6-9.el7.x86_64
basesystem-10.0-7.el7.centos.noarch
taglib-1.8-7.20130218git.el7.x86_64
os-prober-1.58-9.el7.x86_64
libSM-1.2.2-2.el7.x86_64
osinfo-db-20181214-1.el7_6.noarch
compat-libcolord1-1.0.4-1.el7.x86_64
popt-1.13-16.el7.x86_64
systemd-219-62.el7_6.5.x86_64
libgudev1-219-62.el7_6.5.x86_64
passwd-0.79-4.el7.x86_64
perl-Compress-Raw-Bzip2-2.061-3.el7.x86_64
info-5.1-5.el7.x86_64
python2-boto-2.45.0-3.el7.noarch
perl-Net-Daemon-0.48-5.el7.noarch
iso-codes-3.46-2.el7.noarch
libattr-2.4.46-13.el7.x86_64
perl-Error-0.17020-2.el7.noarch
ntp-4.2.6p5-28.el7.centos.x86_64
libassuan-2.1.0-3.el7.x86_64
ebtables-2.0.10-16.el7.x86_64
mailcap-2.1.41-2.el7.noarch
poppler-data-0.4.6-3.el7.noarch
xkeyboard-config-2.24-1.el7.noarch
diffutils-3.3-4.el7.x86_64
firewalld-0.5.3-5.el7.noarch
cdparanoia-libs-10.2-17.el7.x86_64
shared-mime-info-1.8-4.el7.x86_64
libedit-3.0-12.20121213cvs.el7.x86_64
kernel-tools-3.10.0-957.10.1.el7.x86_64
zlib-1.2.7-18.el7.x86_64
python-perf-3.10.0-957.10.1.el7.x86_64
hostname-3.13-3.el7.x86_64
perl-parent-0.225-244.el7.noarch
dbus-libs-1.10.24-13.el7_6.x86_64
python-ipaddress-1.0.16-2.el7.noarch
libmount-2.23.2-59.el7_6.1.x86_64
ncurses-libs-5.9-14.20130511.el7_4.x86_64
libwayland-client-1.15.0-1.el7.x86_64
util-linux-2.23.2-59.el7_6.1.x86_64
filesystem-3.2-25.el7.x86_64
libtalloc-2.1.13-1.el7.x86_64
perl-constant-1.27-2.el7.noarch
xorg-x11-server-Xorg-1.20.1-5.3.el7_6.x86_64
libarchive-3.1.2-10.el7_2.x86_64
perl-PathTools-3.40-5.el7.x86_64
mutter-3.28.3-6.el7_6.x86_64
libXi-1.7.9-1.el7.x86_64
gsettings-desktop-schemas-3.28.0-2.el7.x86_64
perl-threads-shared-1.43-6.el7.x86_64
python-gobject-base-3.22.0-1.el7_4.1.x86_64
libstdc++-4.8.5-36.el7_6.1.x86_64
chkconfig-1.7.4-1.el7.x86_64
gobject-introspection-1.56.1-1.el7.x86_64
kernel-3.10.0-957.10.1.el7.x86_64
gpm-libs-1.20.7-5.el7.x86_64
libsemanage-2.5-14.el7.x86_64
sysvinit-tools-2.88-14.dsf.el7.x86_64
file-libs-5.11-35.el7.x86_64
libepoxy-1.5.2-1.el7.x86_64
qrencode-libs-3.4.1-3.el7.x86_64
libcanberra-0.30-5.el7.x86_64
libselinux-python-2.5-14.1.el7.x86_64
cracklib-2.9.0-11.el7.x86_64
expat-2.1.0-10.el7_3.x86_64
jansson-2.10-1.el7.x86_64
llvm-private-6.0.1-2.el7.x86_64
nspr-4.19.0-1.el7_5.x86_64
gpg-pubkey-352c64e5-52ae6884
libXv-1.0.11-1.el7.x86_64
ethtool-4.8-9.el7.x86_64
glib-networking-2.56.1-1.el7.x86_64
libutempter-1.1.6-4.el7.x86_64
libXinerama-1.1.3-2.1.el7.x86_64
orc-0.4.26-1.el7.x86_64
totem-pl-parser-3.26.1-1.el7.x86_64
dhcp-libs-4.2.5-68.el7.centos.1.x86_64
libXxf86misc-1.0.3-7.1.el7.x86_64
lcms2-2.6-3.el7.x86_64
pytalloc-2.1.13-1.el7.x86_64
libffi-3.0.13-18.el7.x86_64
python-urlgrabber-3.10-9.el7.noarch
python-configobj-4.7.2-7.el7.noarch
cogl-1.22.2-2.el7.x86_64
ruby-irb-2.0.0.648-34.el7_6.noarch
python-kitchen-1.1.1-5.el7.noarch
rubygem-psych-2.0.0-34.el7_6.x86_64
dhclient-4.2.5-68.el7.centos.1.x86_64
nano-2.3.1-10.el7.x86_64
logrotate-3.8.6-17.el7.x86_64
python-iniparse-0.4-9.el7.noarch
openoffice-en-US-4.1.1-9775.x86_64
libsrtp-1.4.4-10.20101004cvs.el7.x86_64
openoffice-en-US-draw-4.1.1-9775.x86_64
mtdev-1.1.5-5.el7.x86_64
libnetfilter_conntrack-1.0.6-1.el7_3.x86_64
openoffice-en-US-res-4.1.1-9775.x86_64
desktop-file-utils-0.23-1.el7.x86_64
newt-python-0.52.15-4.el7.x86_64
libtiff-4.0.3-27.el7_3.x86_64
openoffice-core02-4.1.1-9775.x86_64
openoffice-core06-4.1.1-9775.x86_64
openoffice-4.1.1-9775.x86_64
pcre2-10.23-2.el7.x86_64
openoffice-brand-math-4.1.1-9775.x86_64
openoffice-brand-en-US-4.1.1-9775.x86_64
libxkbcommon-0.7.1-1.el7.x86_64
openoffice-graphicfilter-4.1.1-9775.x86_64
openoffice-ooolinguistic-4.1.1-9775.x86_64
ncurses-devel-5.9-14.20130511.el7_4.x86_64
bind-license-9.9.4-73.el7_6.noarch
libXcomposite-0.4.4-4.1.el7.x86_64
ilmbase-1.0.3-7.el7.x86_64
libxkbcommon-x11-0.7.1-1.el7.x86_64
automake-1.13.4-3.el7.noarch
glibc-2.17-260.el7_6.3.x86_64
python2-rsa-3.4.1-1.el7.noarch
plymouth-plugin-two-step-0.8.9-0.31.20140113.el7.centos.x86_64
krb5-libs-1.15.1-37.el7_6.x86_64
freetype-2.8-12.el7_6.1.x86_64
gawk-4.0.2-4.el7_3.1.x86_64
device-mapper-libs-1.02.149-10.el7_6.3.x86_64
libffi-devel-3.0.13-18.el7.x86_64
kernel-3.10.0-862.14.4.el7.x86_64
grub2-tools-extra-2.02-0.76.el7.centos.1.x86_64
libtheora-1.1.1-8.el7.x86_64
pinentry-0.8.1-17.el7.x86_64
mpfr-3.1.1-4.el7.x86_64
nux-dextop-release-0-5.el7.nux.noarch
libXpm-3.5.12-1.el7.x86_64
quota-4.01-17.el7.x86_64
nss-tools-3.36.0-7.1.el7_6.x86_64
telepathy-filesystem-0.0.2-6.el7.noarch
libpipeline-1.2.3-3.el7.x86_64
perl-5.16.3-294.el7_6.x86_64
telepathy-logger-0.8.0-5.el7.x86_64
libxslt-1.1.28-5.el7.x86_64
jbigkit-libs-2.0-11.el7.x86_64
lvm2-2.02.180-10.el7_6.3.x86_64
libblockdev-loop-2.18-3.el7.x86_64
iscsi-initiator-utils-iscsiuio-6.2.0.874-10.el7.x86_64
libcgroup-0.41-20.el7.x86_64
device-mapper-multipath-0.4.9-123.el7.x86_64
fuse-libs-2.9.2-11.el7.x86_64
kbd-misc-1.15.5-15.el7.noarch
cloud-utils-growpart-0.29-2.el7.noarch
udisks2-2.7.3-8.el7.x86_64
liberation-mono-fonts-1.07.2-16.el7.noarch
libmpcdec-1.2.6-12.el7.x86_64
python-nose-1.3.7-1.el7.noarch
dejavu-sans-fonts-2.33-6.el7.noarch
plymouth-system-theme-0.8.9-0.31.20140113.el7.centos.x86_64
vim-filesystem-7.4.160-5.el7.x86_64
gdk-pixbuf2-2.36.12-3.el7.x86_64
xorg-x11-xkb-utils-7.7-14.el7.x86_64
pango-1.42.4-1.el7.x86_64
libglvnd-gles-1.0.1-0.8.git5baa1e5.el7.x86_64
adwaita-gtk2-theme-3.28-2.el7.x86_64
numpy-1.7.1-13.el7.x86_64
gnome-desktop3-3.28.2-2.el7.x86_64
webkitgtk4-2.20.5-1.el7.x86_64
gnome-bluetooth-libs-3.28.2-1.el7.x86_64
python-jsonpointer-1.9-2.el7.noarch
evolution-data-server-langpacks-3.28.5-1.el7.noarch
gnome-keyring-3.28.2-1.el7.x86_64
vte3-0.36.5-1.el7.x86_64
gnome-terminal-3.28.2-2.el7.x86_64
bluez-5.44-4.el7_4.x86_64
xdg-desktop-portal-gtk-1.0.2-1.el7.x86_64
rtkit-0.11-10.el7.x86_64
ibus-gtk3-1.5.17-2.el7.x86_64
less-458-9.el7.x86_64
vino-3.22.0-7.el7.x86_64
gnome-shell-extension-launch-new-instance-3.28.1-5.el7.noarch
tigervnc-license-1.8.0-13.el7.noarch
gnome-terminal-nautilus-3.28.2-2.el7.x86_64
xorg-x11-drv-qxl-0.1.5-4.el7.1.x86_64
xorg-x11-drv-intel-2.99.917-28.20180530.el7.x86_64
xorg-x11-drv-evdev-2.10.6-1.el7.x86_64
xorg-x11-utils-7.5-23.el7.x86_64
perl-Time-HiRes-1.9725-3.el7.x86_64
kbd-1.15.5-15.el7.x86_64
kexec-tools-2.0.15-21.el7.x86_64
libimobiledevice-1.2.0-1.el7.x86_64
samba-common-tools-4.8.3-4.el7.x86_64
postfix-2.10.1-7.el7.x86_64
PackageKit-glib-1.1.10-1.el7.centos.x86_64
teamd-1.27-5.el7.x86_64
e2fsprogs-libs-1.42.9-13.el7.x86_64
yum-utils-1.1.31-50.el7.noarch
GeoIP-1.5.0-13.el7.x86_64
tar-1.26-35.el7.x86_64
iptables-1.4.21-28.el7.x86_64
linux-firmware-20180911-69.git85c5d90.el7.noarch
emacs-filesystem-24.3-22.el7.noarch
libini_config-1.3.1-32.el7.x86_64
libcurl-7.29.0-51.el7.x86_64
flac-libs-1.3.0-5.el7_1.x86_64
yum-3.4.3-161.el7.centos.noarch
dosfstools-3.0.20-10.el7.x86_64
kpartx-0.4.9-123.el7.x86_64
cryptsetup-libs-2.0.3-3.el7.x86_64
elfutils-default-yama-scope-0.172-2.el7.noarch
initscripts-9.49.46-1.el7.x86_64
accountsservice-libs-0.6.50-2.el7.x86_64
python-jsonpatch-1.2-4.el7.noarch
libwbclient-4.8.3-4.el7.x86_64
fipscheck-lib-1.4.1-6.el7.x86_64
hwdata-0.252-9.1.el7.x86_64
libXvMC-1.0.10-1.el7.x86_64
samba-libs-4.8.3-4.el7.x86_64
gsm-1.0.13-11.el7.x86_64
libgsf-1.14.26-7.el7.x86_64
bind-libs-lite-9.9.4-73.el7_6.x86_64
ibus-libs-1.5.17-2.el7.x86_64
amazon-ssm-agent-2.3.415.0-1.x86_64
device-mapper-multipath-libs-0.4.9-123.el7.x86_64
pulseaudio-gdm-hooks-10.0-5.el7.x86_64
gnome-menus-3.13.3-3.el7.x86_64
libblockdev-mdraid-2.18-3.el7.x86_64
ghostscript-9.07-31.el7_6.9.x86_64
dejavu-fonts-common-2.33-6.el7.noarch
libX11-1.6.5-2.el7.x86_64
libacl-2.2.51-14.el7.x86_64
autogen-libopts-5.18-5.el7.x86_64
dbus-glib-0.100-7.el7.x86_64
pulseaudio-module-bluetooth-10.0-5.el7.x86_64
cairo-1.15.12-3.el7.x86_64
opus-1.0.2-6.el7.x86_64
perl-TermReadKey-2.30-20.el7.x86_64
pciutils-3.5.1-3.el7.x86_64
at-spi2-atk-2.26.2-1.el7.x86_64
python-slip-0.4.0-4.el7.noarch
groff-base-1.22.2-8.el7.x86_64
libusbx-1.0.21-1.el7.x86_64
liboauth-0.9.7-4.el7.x86_64
mobile-broadband-provider-info-1.20170310-1.el7.noarch
httpd-2.4.6-88.el7.centos.x86_64
patch-2.7.1-10.el7_5.x86_64
bash-4.2.46-31.el7.x86_64
xcb-util-0.4.0-2.el7.x86_64
webkitgtk4-jsc-2.20.5-1.el7.x86_64
gzip-1.5-10.el7.x86_64
libgcc-4.8.5-36.el7_6.1.x86_64
gdbm-1.10-8.el7.x86_64
perl-HTTP-Tiny-0.033-3.el7.noarch
libgdata-0.17.9-1.el7.x86_64
NetworkManager-libnm-1.12.0-10.el7_6.x86_64
libxcb-1.13-1.el7.x86_64
vte291-0.52.2-2.el7.x86_64
gdm-3.28.2-12.el7_6.x86_64
glib2-2.56.1-2.el7.x86_64
perl-Scalar-List-Utils-1.27-248.el7.x86_64
ibus-gtk2-1.5.17-2.el7.x86_64
cyrus-sasl-lib-2.1.26-23.el7.x86_64
libXrandr-1.5.1-2.el7.x86_64
python-gobject-3.22.0-1.el7_4.1.x86_64
gnutls-3.3.29-9.el7_6.x86_64
libtevent-0.9.36-1.el7.x86_64
gnome-shell-3.28.3-6.el7.x86_64
soundtouch-1.4.0-9.el7.x86_64
libICE-1.0.9-9.el7.x86_64
alsa-lib-1.1.6-2.el7.x86_64
gnome-shell-extension-apps-menu-3.28.1-5.el7.noarch
libXt-1.1.5-3.el7.x86_64
harfbuzz-icu-1.7.5-2.el7.x86_64
xorg-x11-drv-vesa-2.4.0-1.el7.x86_64
libndp-1.2-7.el7.x86_64
sound-theme-freedesktop-0.8-3.el7.noarch
gdisk-0.8.10-2.el7.x86_64
libthai-0.1.14-9.el7.x86_64
xorg-x11-drv-vmware-13.2.1-1.el7.1.x86_64
libcollection-0.7.0-32.el7.x86_64
libmediaart-1.9.4-1.el7.x86_64
avahi-libs-0.6.31-19.el7.x86_64
gvfs-client-1.36.2-1.el7.x86_64
lua-5.1.4-15.el7.x86_64
hunspell-1.3.2-15.el7.x86_64
p11-kit-trust-0.23.5-3.el7.x86_64
rubygem-io-console-0.4.2-34.el7_6.x86_64
libXxf86dga-1.1.4-2.1.el7.x86_64
dnsmasq-2.76-7.el7.x86_64
parted-3.1-29.el7.x86_64
python-setuptools-0.9.8-7.el7.noarch
python-IPy-0.75-6.el7.noarch
jasper-libs-1.900.1-33.el7.x86_64
microcode_ctl-2.1-47.el7.x86_64
openoffice-core01-4.1.1-9775.x86_64
e2fsprogs-1.42.9-13.el7.x86_64
openoffice-en-US-math-4.1.1-9775.x86_64
libgusb-0.2.9-1.el7.x86_64
zlib-devel-1.2.7-18.el7.x86_64
openoffice-core05-4.1.1-9775.x86_64
gpg-pubkey-85c6cd8a-4e060c35
google-noto-emoji-color-fonts-20180508-4.el7.noarch
openoffice-brand-writer-4.1.1-9775.x86_64
curl-7.29.0-51.el7.x86_64
openoffice-gnome-integration-4.1.1-9775.x86_64
dmidecode-3.1-2.el7.x86_64
perl-Thread-Queue-3.02-2.el7.noarch
xvattr-1.3-27.el7.x86_64
grub2-pc-modules-2.02-0.76.el7.centos.1.noarch
openoffice4.1.1-redhat-menus-4.1.1-9775.noarch
policycoreutils-2.5-29.el7_6.1.x86_64
plymouth-theme-charge-0.8.9-0.31.20140113.el7.centos.x86_64
crontabs-1.11-6.20121102git.el7.noarch
libasyncns-0.8-7.el7.x86_64
device-mapper-1.02.149-10.el7_6.3.x86_64
python-markupsafe-0.11-10.el7.x86_64
lvm2-libs-2.02.180-10.el7_6.3.x86_64
libbytesize-1.2-1.el7.x86_64
hardlink-1.0-19.el7.x86_64
geoclue2-2.4.8-1.el7.x86_64
exempi-2.2.0-8.el7.x86_64
python-jinja2-2.7.2-2.el7.noarch
samba-client-libs-4.8.3-4.el7.x86_64
perl-Pod-Escapes-1.04-294.el7_6.noarch
libusbmuxd-1.0.10-5.el7.x86_64
json-c-0.11-4.el7_0.x86_64
libsmbclient-4.8.3-4.el7.x86_64
startup-notification-0.12-8.el7.x86_64
xorg-x11-drv-ati-18.1.0-1.el7_6.x86_64
bzip2-libs-1.0.6-13.el7.x86_64
libblockdev-crypto-2.18-3.el7.x86_64
mesa-libxatracker-18.0.5-4.el7_6.x86_64
net-tools-2.0-0.24.20131004git.el7.x86_64
libcdio-paranoia-10.2+0.90-11.el7.x86_64
gnome-icon-theme-3.12.0-1.el7.noarch
libblockdev-fs-2.18-3.el7.x86_64
libwacom-0.30-1.el7.x86_64
flatpak-libs-1.0.2-4.el7_6.x86_64
atlas-3.10.1-12.el7.x86_64
libgpg-error-1.12-3.el7.x86_64
polkit-0.112-18.el7_6.1.x86_64
libverto-tevent-0.2.5-4.el7.x86_64
libsndfile-1.0.25-10.el7.x86_64
poppler-0.26.5-20.el7.x86_64
rootfiles-8.1-11.el7.noarch
perl-DBI-1.627-4.el7.x86_64
ncurses-5.9-14.20130511.el7_4.x86_64
openssh-server-7.4p1-16.el7.x86_64
gstreamer1-plugins-base-1.10.4-2.el7.x86_64
apr-util-1.5.2-6.el7.x86_64
pinentry-gtk-0.8.1-17.el7.x86_64
pam-1.1.8-22.el7.x86_64
libunistring-0.9.3-9.el7.x86_64
ipset-libs-6.38-3.el7_6.x86_64
gtk-update-icon-cache-3.22.30-3.el7.x86_64
slang-2.2.4-11.el7.x86_64
mlocate-0.26-8.el7.x86_64
openssl-devel-1.0.2k-16.el7_6.1.x86_64
libgweather-3.28.2-2.el7.x86_64
ncurses-base-5.9-14.20130511.el7_4.noarch
dbus-1.10.24-13.el7_6.x86_64
kmod-libs-20-23.el7.x86_64
gvfs-1.36.2-1.el7.x86_64
perl-Encode-2.51-7.el7.x86_64
man-pages-3.53-5.el7.noarch
lz4-1.7.5-2.el7.x86_64
libquadmath-4.8.5-36.el7_6.1.x86_64
python-libs-2.7.5-76.el7.x86_64
zenity-3.28.1-1.el7.x86_64
libwmf-lite-0.2.8.4-41.el7_1.x86_64
cloud-init-18.2-1.el7.centos.2.x86_64
clutter-gst3-3.0.26-1.el7.x86_64
perl-Filter-1.49-3.el7.x86_64
libmodman-2.0.1-8.el7.x86_64
gnome-shell-extension-alternate-tab-3.28.1-5.el7.noarch
findutils-4.5.11-6.el7.x86_64
tigervnc-server-1.8.0-13.el7.x86_64
libuser-0.60-9.el7.x86_64
ustr-1.0.4-16.el7.x86_64
libcroco-0.6.12-4.el7.x86_64
xorg-x11-drv-vmmouse-13.1.0-1.el7.1.x86_64
libbasicobjects-0.1.1-32.el7.x86_64
xorg-x11-drv-synaptics-1.9.0-2.el7.x86_64
nss-softokn-freebl-3.36.0-5.el7_5.x86_64
rest-0.8.1-2.el7.x86_64
trousers-0.3.14-2.el7.x86_64
python-linux-procfs-0.4.9-4.el7.noarch
libXdamage-1.1.4-4.1.el7.x86_64
rubygem-bigdecimal-1.2.0-34.el7_6.x86_64
python-markdown-2.4.1-2.el7.noarch
realmd-0.16.1-11.el7.x86_64
libssh2-1.4.3-12.el7.x86_64
dracut-config-generic-033-554.el7.x86_64
openoffice-en-US-base-4.1.1-9775.x86_64
setools-libs-3.3.8-4.el7.x86_64
openoffice-base-4.1.1-9775.x86_64
libnl3-cli-3.2.28-4.el7.x86_64
libselinux-devel-2.5-14.1.el7.x86_64
openoffice-draw-4.1.1-9775.x86_64
fuse-2.9.2-11.el7.x86_64
openoffice-brand-calc-4.1.1-9775.x86_64
rpm-python-4.11.3-35.el7.x86_64
openoffice-onlineupdate-4.1.1-9775.x86_64
libfontenc-1.1.3-3.el7.x86_64
tzdata-2018i-1.el7.noarch
urw-fonts-2.4-16.el7.noarch
gettext-0.19.8.1-2.el7.x86_64
plymouth-0.8.9-0.31.20140113.el7.centos.x86_64
kmod-20-23.el7.x86_64
nss-util-3.36.0-1.1.el7_6.x86_64
sqlite-devel-3.7.17-8.el7.x86_64
grub2-tools-minimal-2.02-0.76.el7.centos.1.x86_64
nss-3.36.0-7.1.el7_6.x86_64
xterm-295-3.el7.x86_64
perl-libs-5.16.3-294.el7_6.x86_64
clutter-gtk-1.8.4-1.el7.x86_64
pygpgme-0.3-9.el7.x86_64
openldap-2.4.44-21.el7_6.x86_64
libnma-1.8.6-2.el7.x86_64
mesa-libEGL-18.0.5-4.el7_6.x86_64
libblockdev-swap-2.18-3.el7.x86_64
colord-gtk-0.1.25-4.el7.x86_64
cronie-anacron-1.4.11-20.el7_6.x86_64
checkpolicy-2.5-8.el7.x86_64
libreport-filesystem-2.1.11-42.el7.centos.x86_64
blas-3.4.2-8.el7.x86_64
systemd-sysv-219-62.el7_6.5.x86_64
tcp_wrappers-libs-7.6-77.el7.x86_64
graphite2-1.3.10-1.el7_3.x86_64
adwaita-cursor-theme-3.28.0-1.el7.noarch
irqbalance-1.0.7-11.el7.x86_64
libdb-5.3.21-24.el7.x86_64
kernel-3.10.0-862.11.6.el7.x86_64
gpg-pubkey-f4a80eb5-53a7ff4b
vim-common-7.4.160-5.el7.x86_64
perl-DBD-MySQL-4.023-6.el7.x86_64
pkgconfig-0.27.1-4.el7.x86_64
libtdb-1.3.15-1.el7.x86_64
hunspell-en-US-0.20121024-6.el7.noarch
libglvnd-egl-1.0.1-0.8.git5baa1e5.el7.x86_64
libatasmart-0.19-6.el7.x86_64
libXcursor-1.1.15-1.el7.x86_64
python-chardet-2.2.1-1.el7_1.noarch
epel-release-7-11.noarch
httpd-tools-2.4.6-88.el7.centos.x86_64
glx-utils-8.3.0-10.el7.x86_64
ipset-6.38-3.el7_6.x86_64
python-urllib3-1.10.2-5.el7.noarch
gcr-3.28.0-1.el7.x86_64
libselinux-2.5-14.1.el7.x86_64
perl-Getopt-Long-2.40-3.el7.noarch
gnome-bluetooth-3.28.2-1.el7.x86_64
audit-libs-2.8.4-4.el7.x86_64
python-pillow-2.0.0-19.gitd1c6db8.el7.x86_64
dbus-x11-1.10.24-13.el7_6.x86_64
pciutils-libs-3.5.1-3.el7.x86_64
pcre-8.32-17.el7.x86_64
perl-Pod-Usage-1.63-3.el7.noarch
gnome-keyring-pam-3.28.2-1.el7.x86_64
elfutils-libelf-0.172-2.el7.x86_64
libgfortran-4.8.5-36.el7_6.1.x86_64
p11-kit-0.23.5-3.el7.x86_64
perl-Carp-1.26-244.el7.noarch
grilo-0.3.6-1.el7.x86_64
json-glib-1.4.2-2.el7.x86_64
xfsprogs-4.5.0-19.el7_6.x86_64
libgcrypt-1.5.3-14.el7.x86_64
perl-Pod-Simple-3.28-4.el7.noarch
control-center-3.28.1-4.el7.x86_64
gnome-shell-extension-window-list-3.28.1-5.el7.noarch
libicu-50.1.2-17.el7.x86_64
sbc-1.0-5.el7.x86_64
libXau-1.0.8-2.1.el7.x86_64
xorg-x11-drv-void-1.4.1-2.el7.1.x86_64
setup-2.8.71-10.el7.noarch
python2-pyasn1-0.1.9-7.el7.noarch
libcanberra-gtk3-0.30-5.el7.x86_64
xorg-x11-drv-dummy-0.3.7-1.el7.1.x86_64
libXfont2-2.0.3-1.el7.x86_64
libplist-1.12-3.el7.x86_64
libgxps-0.3.0-4.el7.x86_64
grubby-8.28-25.el7.x86_64
cups-libs-1.6.3-35.el7.x86_64
libgcab1-0.7-4.el7_4.x86_64
libpciaccess-0.14-1.el7.x86_64
libosinfo-1.1.0-2.el7.x86_64
rubygem-rdoc-4.0.0-34.el7_6.noarch
binutils-2.27-34.base.el7.x86_64
openssh-7.4p1-16.el7.x86_64
openoffice-impress-4.1.1-9775.x86_64
sudo-1.8.23-3.el7.x86_64
pulseaudio-10.0-5.el7.x86_64
openoffice-en-US-writer-4.1.1-9775.x86_64
man-db-2.6.3-11.el7.x86_64
vim-minimal-7.4.160-5.el7.x86_64
volume_key-libs-0.3.9-8.el7.x86_64
openoffice-core07-4.1.1-9775.x86_64
python-requests-2.6.0-1.el7_1.noarch
libpath_utils-0.2.1-32.el7.x86_64
openoffice-brand-base-4.1.1-9775.x86_64
mesa-private-llvm-3.9.1-3.el7.x86_64
rpm-4.11.3-35.el7.x86_64
libdvdread-5.0.3-3.el7.x86_64
openoffice-javafilter-4.1.1-9775.x86_64
hyphen-2.8.6-5.el7.x86_64
kernel-3.10.0-957.1.3.el7.x86_64
libteam-1.27-5.el7.x86_64
pcre-devel-8.32-17.el7.x86_64
iproute-4.11.0-14.el7.x86_64
gettext-libs-0.19.8.1-2.el7.x86_64
libogg-1.3.0-7.el7.x86_64
keyutils-libs-devel-1.5.8-3.el7.x86_64
polkit-pkla-compat-0.1-4.el7.x86_64
bzip2-1.0.6-13.el7.x86_64
libaio-0.3.109-13.el7.x86_64
grub2-pc-2.02-0.76.el7.centos.1.x86_64
quota-nls-4.01-17.el7.noarch
libkadm5-1.15.1-37.el7_6.x86_64
python-schedutils-0.4-6.el7.x86_64
mesa-filesystem-18.0.5-4.el7_6.x86_64
wpa_supplicant-2.6-12.el7.x86_64
grub2-2.02-0.76.el7.centos.1.x86_64
webkitgtk3-2.4.11-2.el7.x86_64

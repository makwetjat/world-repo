=============SERVER DETAILS=====================
CentOS Linux release 7.3.1611 (Core) 
# dmidecode 3.0
Scanning /dev/mem for entry point.
SMBIOS 2.7 present.

Handle 0x0001, DMI type 1, 27 bytes
System Information
	Manufacturer: VMware, Inc.
	Product Name: VMware Virtual Platform
	Version: None
	Serial Number: VMware-56 4d 73 35 ba 04 b8 e7-7d df 32 f2 03 d8 dc 46
	UUID: 35734D56-04BA-E7B8-7DDF-32F203D8DC46
	Wake-up Type: Power Switch
	SKU Number: Not Specified
	Family: Not Specified

Handle 0x01A1, DMI type 15, 29 bytes
System Event Log
	Area Length: 16 bytes
	Header Start Offset: 0x0000
	Header Length: 16 bytes
	Data Start Offset: 0x0010
	Access Method: General-purpose non-volatile data functions
	Access Address: 0x0000
	Status: Invalid, Full
	Change Token: 0x00000036
	Header Format: Type 1
	Supported Log Type Descriptors: 3
	Descriptor 1: POST error
	Data Format 1: POST results bitmap
	Descriptor 2: Single-bit ECC memory error
	Data Format 2: Multiple-event
	Descriptor 3: Multi-bit ECC memory error
	Data Format 3: Multiple-event

Handle 0x0265, DMI type 23, 13 bytes
System Reset
	Status: Enabled
	Watchdog Timer: Present
	Boot Option: Do Not Reboot
	Boot Option On Limit: Do Not Reboot
	Reset Count: Unknown
	Reset Limit: Unknown
	Timer Interval: Unknown
	Timeout: Unknown

Handle 0x0268, DMI type 32, 20 bytes
System Boot Information
	Status: No errors detected

Linux myworldtst.mash.com 3.10.0-514.el7.x86_64 #1 SMP Tue Nov 22 16:42:41 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux
Fri May 29 10:31:03 SAST 2020
 10:31:03 up 1 min,  1 user,  load average: 0.47, 0.18, 0.07
=============DF Output===================
Filesystem           Size  Used Avail Use% Mounted on
/dev/mapper/cl-root  8.0G  1.2G  6.9G  15% /
devtmpfs             478M     0  478M   0% /dev
tmpfs                489M     0  489M   0% /dev/shm
tmpfs                489M  6.7M  482M   2% /run
tmpfs                489M     0  489M   0% /sys/fs/cgroup
/dev/sdb1            4.8G   21M  4.6G   1% /apps
/dev/sda1           1014M  139M  876M  14% /boot
tmpfs                 98M     0   98M   0% /run/user/1000
==============DF Count ==============
9
===============VGDISPLAY=====================
  --- Volume group ---
  VG Name               cl
  System ID             
  Format                lvm2
  Metadata Areas        1
  Metadata Sequence No  3
  VG Access             read/write
  VG Status             resizable
  MAX LV                0
  Cur LV                2
  Open LV               2
  Max PV                0
  Cur PV                1
  Act PV                1
  VG Size               9.00 GiB
  PE Size               4.00 MiB
  Total PE              2303
  Alloc PE / Size       2303 / 9.00 GiB
  Free  PE / Size       0 / 0   
  VG UUID               SuSKwk-1Bub-DikB-4vhQ-hpev-BEUm-PG0eSz
   
  --- Logical volume ---
  LV Path                /dev/cl/swap
  LV Name                swap
  VG Name                cl
  LV UUID                x5jhHf-SfO8-NyxZ-86ei-g5uL-pOTq-ARlGRB
  LV Write Access        read/write
  LV Creation host, time localhost.localdomain, 2020-04-17 12:54:41 +0200
  LV Status              available
  # open                 2
  LV Size                1.00 GiB
  Current LE             256
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     8192
  Block device           253:1
   
  --- Logical volume ---
  LV Path                /dev/cl/root
  LV Name                root
  VG Name                cl
  LV UUID                PhC1O5-28Kf-xH2J-6MKG-5CWb-GeEV-mvvGEs
  LV Write Access        read/write
  LV Creation host, time localhost.localdomain, 2020-04-17 12:54:41 +0200
  LV Status              available
  # open                 1
  LV Size                8.00 GiB
  Current LE             2047
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     8192
  Block device           253:0
   
  --- Physical volumes ---
  PV Name               /dev/sda2     
  PV UUID               jsEEAO-lnBz-qLLI-ccPO-FlIt-nxcx-gzhLpW
  PV Status             allocatable
  Total PE / Free PE    2303 / 0
   
=========================NFS Exported FS================
===============FSTAB DETAILS=====================

#
# /etc/fstab
# Created by anaconda on Fri Apr 17 12:54:42 2020
#
# Accessible filesystems, by reference, are maintained under '/dev/disk'
# See man pages fstab(5), findfs(8), mount(8) and/or blkid(8) for more info
#
/dev/mapper/cl-root     /                       xfs     defaults        0 0
UUID=26be37d7-7588-4052-babc-85496c4212cd /boot                   xfs     defaults        0 0
/dev/mapper/cl-swap     swap                     swap     defaults        0 0
UUID=0bc481bf-8a84-4ae9-93b8-98f7ec2a7edb /apps  ext4     defaults        0 0
================NETWORK DETAILS====================
Kernel IP routing table
Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
0.0.0.0         192.168.42.2    0.0.0.0         UG        0 0          0 ens33
192.168.42.0    0.0.0.0         255.255.255.0   U         0 0          0 ens33
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      995/sshd            
tcp        0      0 127.0.0.1:25            0.0.0.0:*               LISTEN      1810/master         
tcp6       0      0 :::80                   :::*                    LISTEN      979/httpd           
tcp6       0      0 :::21                   :::*                    LISTEN      984/vsftpd          
tcp6       0      0 :::22                   :::*                    LISTEN      995/sshd            
tcp6       0      0 ::1:25                  :::*                    LISTEN      1810/master         
udp        0      0 0.0.0.0:29607           0.0.0.0:*                           792/dhclient        
udp        0      0 0.0.0.0:68              0.0.0.0:*                           792/dhclient        
udp6       0      0 :::18284                :::*                                792/dhclient        
================Lan Details===========
ens33: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.42.157  netmask 255.255.255.0  broadcast 192.168.42.255
        inet6 fe80::114:90d:c00a:3ab7  prefixlen 64  scopeid 0x20<link>
        ether 00:0c:29:d8:dc:46  txqueuelen 1000  (Ethernet)
        RX packets 270  bytes 211723 (206.7 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 168  bytes 28206 (27.5 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1  (Local Loopback)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

-rw-r--r--. 1 root root 254 Sep 12  2016 /etc/sysconfig/network-scripts/ifcfg-lo
-rw-r--r--. 1 root root 310 May 19 16:27 /etc/sysconfig/network-scripts/ifcfg-ens33
TYPE=Ethernet
BOOTPROTO=dhcp
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=ens33
UUID=1e137b93-fc57-433b-bcaa-64bd76de552c
DEVICE=ens33
ONBOOT=yes
PEERDNS=yes
PEERROUTES=yes
IPV6_PEERDNS=yes
IPV6_PEERROUTES=yes
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

Disk /dev/sda: 10.7 GB, 10737418240 bytes, 20971520 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk label type: dos
Disk identifier: 0x000ab4c3

   Device Boot      Start         End      Blocks   Id  System
/dev/sda1   *        2048     2099199     1048576   83  Linux
/dev/sda2         2099200    20971519     9436160   8e  Linux LVM

Disk /dev/sdb: 21.5 GB, 21474836480 bytes, 41943040 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk label type: dos
Disk identifier: 0x19656128

   Device Boot      Start         End      Blocks   Id  System
/dev/sdb1            2048    10485759     5241856   83  Linux

Disk /dev/mapper/cl-root: 8585 MB, 8585740288 bytes, 16769024 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/mapper/cl-swap: 1073 MB, 1073741824 bytes, 2097152 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

================FC/SCSI Details===========
================Running DBs ===========
root       2377   2349  0 10:31 pts/0    00:00:00 grep -i pmon
=============Installed Pkg Details ==========
NetworkManager-team-1.4.0-12.el7.x86_64
centos-release-7-3.1611.el7.centos.x86_64
NetworkManager-wifi-1.4.0-12.el7.x86_64
filesystem-3.2-21.el7.x86_64
lvm2-2.02.166-1.el7.x86_64
ncurses-base-5.9-13.20130511.el7.noarch
kexec-tools-2.0.7-50.el7.x86_64
bind-license-9.9.4-37.el7.noarch
rdma-7.3_4.7_rc2-5.el7.noarch
tzdata-2016g-2.el7.noarch
openssh-clients-6.6.1p1-31.el7.x86_64
nss-softokn-freebl-3.16.2.3-14.4.el7.x86_64
postfix-2.10.1-6.el7.x86_64
libstdc++-4.8.5-11.el7.x86_64
irqbalance-1.0.7-6.el7.x86_64
bash-4.2.46-20.el7_2.x86_64
biosdevname-0.7.2-1.el7.x86_64
pcre-8.32-15.el7_2.1.x86_64
dracut-config-rescue-033-463.el7.x86_64
zlib-1.2.7-17.el7.x86_64
kernel-tools-3.10.0-514.el7.x86_64
xz-libs-5.2.2-1.el7.x86_64
sudo-1.8.6p7-20.el7.x86_64
nspr-4.11.0-1.el7_2.x86_64
xfsprogs-4.5.0-8.el7.x86_64
popt-1.13-16.el7.x86_64
libsysfs-2.1.0-16.el7.x86_64
libcom_err-1.42.9-9.el7.x86_64
iwl6000g2b-firmware-17.168.5.2-49.el7.noarch
libdb-5.3.21-19.el7.x86_64
iwl6050-firmware-41.28.5.1-49.el7.noarch
grep-2.20-2.el7.x86_64
iwl6000g2a-firmware-17.168.5.3-49.el7.noarch
gawk-4.0.2-4.el7.x86_64
iwl5150-firmware-8.24.2.2-49.el7.noarch
libcap-ng-0.7.5-4.el7.x86_64
iwl7265-firmware-22.0.7.0-49.el7.noarch
libffi-3.0.13-18.el7.x86_64
iwl3945-firmware-15.32.2.9-49.el7.noarch
dbus-libs-1.6.12-17.el7.x86_64
ivtv-firmware-20080701-26.el7.noarch
libacl-2.2.51-12.el7.x86_64
iwl2000-firmware-18.168.6.1-49.el7.noarch
libgcrypt-1.5.3-12.el7_1.1.x86_64
iwl4965-firmware-228.61.2.24-49.el7.noarch
cpio-2.11-24.el7.x86_64
gpg-pubkey-f4a80eb5-53a7ff4b
expat-2.1.0-8.el7.x86_64
apr-util-1.5.2-6.el7.x86_64
elfutils-libs-0.166-2.el7.x86_64
mailcap-2.1.41-2.el7.noarch
lua-5.1.4-15.el7.x86_64
diffutils-3.3-4.el7.x86_64
libselinux-2.5-14.1.el7.x86_64
libidn-1.28-4.el7.x86_64
libselinux-utils-2.5-14.1.el7.x86_64
gmp-6.0.0-12.el7_1.x86_64
selinux-policy-3.13.1-252.el7_7.6.noarch
libmnl-1.0.3-7.el7.x86_64
nss-softokn-3.16.2.3-14.4.el7.x86_64
selinux-policy-targeted-3.13.1-252.el7_7.6.noarch
libassuan-2.1.0-3.el7.x86_64
vsftpd-3.0.2-27.el7.x86_64
e2fsprogs-libs-1.42.9-9.el7.x86_64
python-firewall-0.6.3-8.el7_8.1.noarch
kmod-libs-20-9.el7.x86_64
libxml2-2.9.1-6.el7.4.x86_64
which-2.20-7.el7.x86_64
python-chardet-2.2.1-3.el7.noarch
libgomp-4.8.5-11.el7.x86_64
yum-utils-1.1.31-53.el7.noarch
libtasn1-3.8-3.el7.x86_64
httpd-tools-2.4.6-93.el7.centos.x86_64
ca-certificates-2015.2.6-73.el7.noarch
python-httplib2-0.9.2-1.el7.noarch
slang-2.2.4-11.el7.x86_64
nss_compat_ossl-0.9.6-8.el7.x86_64
tcp_wrappers-libs-7.6-77.el7.x86_64
elinks-0.12-0.37.pre6.el7.0.1.x86_64
hostname-3.13-3.el7.x86_64
net-tools-2.0-0.25.20131004git.el7.x86_64
ethtool-4.5-3.el7.x86_64
sysstat-10.1.5-19.el7.x86_64
libnetfilter_conntrack-1.0.4-2.el7.x86_64
libpcap-1.5.3-12.el7.x86_64
iproute-3.10.0-74.el7.x86_64
openssl-1.0.2k-19.el7.x86_64
libteam-1.25-4.el7.x86_64
ipset-6.19-6.el7.x86_64
pkgconfig-0.27.1-4.el7.x86_64
shared-mime-info-1.1-9.el7.x86_64
gettext-libs-0.18.2.1-4.el7.x86_64
gsettings-desktop-schemas-3.14.2-1.el7.x86_64
tar-1.26-31.el7.x86_64
vim-minimal-7.4.160-1.el7.x86_64
libss-1.42.9-9.el7.x86_64
mozjs17-17.0.0-19.el7.x86_64
GeoIP-1.5.0-11.el7.x86_64
freetype-2.4.11-12.el7.x86_64
ncurses-5.9-13.20130511.el7.x86_64
libproxy-0.4.11-10.el7.x86_64
libverto-0.2.5-4.el7.x86_64
coreutils-8.22-18.el7.x86_64
libblkid-2.23.2-33.el7.x86_64
python-2.7.5-48.el7.x86_64
cracklib-2.9.0-11.el7.x86_64
dbus-python-1.1.1-9.el7.x86_64
libpwquality-1.2.3-4.el7.x86_64
systemd-libs-219-30.el7.x86_64
procps-ng-3.3.10-10.el7.x86_64
pygobject3-base-3.14.0-3.el7.x86_64
centos-logos-70.0.6-3.el7.centos.noarch
python-pyudev-0.15-7.el7_2.1.noarch
python-slip-dbus-0.4.0-2.el7.noarch
newt-python-0.52.15-4.el7.x86_64
python-configobj-4.7.2-7.el7.noarch
pyxattr-0.5.1-5.el7.x86_64
grubby-8.28-18.el7.x86_64
bind-libs-lite-9.9.4-37.el7.x86_64
nss-sysinit-3.21.0-17.el7.x86_64
nss-tools-3.21.0-17.el7.x86_64
binutils-2.25.1-22.base.el7.x86_64
mariadb-libs-5.5.52-1.el7.x86_64
libcurl-7.29.0-35.el7.centos.x86_64
rpm-libs-4.11.3-21.el7.x86_64
openldap-2.4.40-13.el7.x86_64
dhcp-libs-4.2.5-47.el7.centos.x86_64
python-pycurl-7.19.0-19.el7.x86_64
fipscheck-lib-1.4.1-5.el7.x86_64
hardlink-1.0-19.el7.x86_64
gnupg2-2.0.22-4.el7.x86_64
rpm-python-4.11.3-21.el7.x86_64
pygpgme-0.3-9.el7.x86_64
yum-3.4.3-150.el7.centos.noarch
libndp-1.2-7.el7.x86_64
teamd-1.25-4.el7.x86_64
qrencode-libs-3.4.1-3.el7.x86_64
device-mapper-persistent-data-0.6.3-1.el7.x86_64
libutempter-1.1.6-4.el7.x86_64
kpartx-0.4.9-99.el7.x86_64
device-mapper-libs-1.02.135-1.el7.x86_64
dracut-033-463.el7.x86_64
systemd-219-30.el7.x86_64
systemd-sysv-219-30.el7.x86_64
polkit-pkla-compat-0.1-4.el7.x86_64
initscripts-9.49.37-1.el7.x86_64
wpa_supplicant-2.0-20.el7.x86_64
hwdata-0.252-8.4.el7.x86_64
cronie-1.4.11-14.el7_2.1.x86_64
openssh-6.6.1p1-31.el7.x86_64
libdrm-2.4.67-3.el7.x86_64
plymouth-0.8.9-0.26.20140113.el7.centos.x86_64
grub2-tools-2.02-0.44.el7.centos.x86_64
lvm2-libs-2.02.166-1.el7.x86_64
ppp-2.4.5-33.el7.x86_64
trousers-0.3.13-1.el7.x86_64
glib-networking-2.42.0-1.el7.x86_64
NetworkManager-1.4.0-12.el7.x86_64
alsa-firmware-1.0.28-2.el7.noarch
virt-what-1.13-8.el7.x86_64
lsscsi-0.27-4.el7.x86_64
json-c-0.11-4.el7_0.x86_64
linux-firmware-20160830-49.git7534e19.el7.noarch
kbd-1.15.5-12.el7.x86_64
man-db-2.6.3-9.el7.x86_64
tuned-2.7.1-3.el7.noarch
libgcc-4.8.5-11.el7.x86_64
NetworkManager-tui-1.4.0-12.el7.x86_64
setup-2.8.71-7.el7.noarch
basesystem-10.0-7.el7.centos.noarch
kbd-misc-1.15.5-12.el7.noarch
grub2-2.02-0.44.el7.centos.x86_64
openssh-server-6.6.1p1-31.el7.x86_64
glibc-common-2.17-157.el7.x86_64
authconfig-6.2.8-14.el7.x86_64
glibc-2.17-157.el7.x86_64
audit-2.6.5-3.el7.x86_64
ncurses-libs-5.9-13.20130511.el7.x86_64
aic94xx-firmware-30-6.el7.noarch
microcode_ctl-2.1-16.el7.x86_64
parted-3.1-28.el7.x86_64
info-5.1-4.el7.x86_64
passwd-0.79-4.el7.x86_64
sed-4.2.2-5.el7.x86_64
btrfs-progs-4.4.1-1.el7.x86_64
libuuid-2.23.2-33.el7.x86_64
e2fsprogs-1.42.9-9.el7.x86_64
chkconfig-1.7.2-1.el7.x86_64
rootfiles-8.1-11.el7.noarch
nss-util-3.21.0-2.2.el7_2.x86_64
iwl100-firmware-39.31.5.1-49.el7.noarch
bzip2-libs-1.0.6-13.el7.x86_64
iwl2030-firmware-18.168.6.1-49.el7.noarch
readline-6.2-9.el7.x86_64
iwl5000-firmware-8.83.5.1_1-49.el7.noarch
elfutils-libelf-0.166-2.el7.x86_64
iwl6000-firmware-9.221.4.1-49.el7.noarch
audit-libs-2.6.5-3.el7.x86_64
iwl3160-firmware-22.0.7.0-49.el7.noarch
libgpg-error-1.12-3.el7.x86_64
iwl105-firmware-18.168.6.1-49.el7.noarch
libattr-2.4.46-12.el7.x86_64
iwl135-firmware-18.168.6.1-49.el7.noarch
libcap-2.22-8.el7.x86_64
iwl1000-firmware-39.31.5.1-49.el7.noarch
iwl7260-firmware-22.0.7.0-49.el7.noarch
libnl3-3.2.28-2.el7.x86_64
apr-1.4.8-5.el7.x86_64
p11-kit-0.20.7-3.el7.x86_64
sqlite-3.7.17-8.el7.x86_64
findutils-4.5.11-5.el7.x86_64
libsepol-2.5-10.el7.x86_64
jansson-2.4-6.el7.x86_64
libsemanage-2.5-14.el7.x86_64
file-libs-5.11-33.el7.x86_64
policycoreutils-2.5-33.el7.x86_64
pciutils-libs-3.5.1-1.el7.x86_64
file-5.11-33.el7.x86_64
libnl3-cli-3.2.28-2.el7.x86_64
libselinux-python-2.5-14.1.el7.x86_64
cyrus-sasl-lib-2.1.26-20.el7_2.x86_64
firewalld-filesystem-0.6.3-8.el7_8.1.noarch
groff-base-1.22.2-8.el7.x86_64
firewalld-0.6.3-8.el7_8.1.noarch
xz-5.2.2-1.el7.x86_64
libxml2-python-2.9.1-6.el7.4.x86_64
libunistring-0.9.3-9.el7.x86_64
python-kitchen-1.1.1-5.el7.noarch
sysvinit-tools-2.88-14.dsf.el7.x86_64
tree-1.6.0-10.el7.x86_64
p11-kit-trust-0.20.7-3.el7.x86_64
httpd-2.4.6-93.el7.centos.x86_64
libnfnetlink-1.0.1-4.el7.x86_64
gpm-libs-1.20.7-6.el7.x86_64
newt-0.52.15-4.el7.x86_64
js-1.8.5-20.el7.x86_64
lzo-2.06-8.el7.x86_64
mlocate-0.26-8.el7.x86_64
keyutils-libs-1.5.8-3.el7.x86_64
lm_sensors-libs-3.4.0-8.20160601gitf9185e5.el7.x86_64
gdbm-1.10-8.el7.x86_64
openssl-libs-1.0.2k-19.el7.x86_64
iptables-1.4.21-17.el7.x86_64
tcpdump-4.9.2-4.el7_7.1.x86_64
less-458-9.el7.x86_64
ipset-libs-6.19-6.el7.x86_64
nettle-2.7.1-8.el7.x86_64
glib2-2.46.2-4.el7.x86_64
libcroco-0.6.8-5.el7.x86_64
gobject-introspection-1.42.0-1.el7.x86_64
dbus-glib-0.100-7.el7.x86_64
acl-2.2.51-12.el7.x86_64
libdb-utils-5.3.21-19.el7.x86_64
pinentry-0.8.1-17.el7.x86_64
make-3.82-23.el7.x86_64
libedit-3.0-12.20121213cvs.el7.x86_64
libmodman-2.0.1-8.el7.x86_64
snappy-1.1.0-3.el7.x86_64
numactl-libs-2.0.9-6.el7_2.x86_64
krb5-libs-1.14.1-26.el7.x86_64
python-libs-2.7.5-48.el7.x86_64
gzip-1.5-8.el7.x86_64
python-decorator-3.4.0-3.el7.noarch
cracklib-dicts-2.9.0-11.el7.x86_64
pam-1.1.8-18.el7.x86_64
libgudev1-219-30.el7.x86_64
gettext-0.18.2.1-4.el7.x86_64
libmount-2.23.2-33.el7.x86_64
plymouth-core-libs-0.8.9-0.26.20140113.el7.centos.x86_64
python-iniparse-0.4-9.el7.noarch
python-slip-0.4.0-2.el7.noarch
yum-metadata-parser-1.1.4-10.el7.x86_64
pyliblzma-0.5.3-11.el7.x86_64
python-perf-3.10.0-514.el7.x86_64
nss-3.21.0-17.el7.x86_64
NetworkManager-libnm-1.4.0-12.el7.x86_64
logrotate-3.8.6-12.el7.x86_64
alsa-lib-1.1.1-1.el7.x86_64
libssh2-1.4.3-10.el7_2.1.x86_64
curl-7.29.0-35.el7.centos.x86_64
rpm-4.11.3-21.el7.x86_64
libuser-0.60-7.el7_1.x86_64
dhcp-common-4.2.5-47.el7.centos.x86_64
python-urlgrabber-3.10-8.el7.noarch
fipscheck-1.4.1-5.el7.x86_64
pth-2.0.7-23.el7.x86_64
rpm-build-libs-4.11.3-21.el7.x86_64
gpgme-1.3.2-5.el7.x86_64
yum-plugin-fastestmirror-1.1.31-40.el7.noarch
kernel-tools-libs-3.10.0-514.el7.x86_64
libdaemon-0.14-7.el7.x86_64
dmidecode-3.0-2.el7.x86_64
libaio-0.3.109-13.el7.x86_64
ustr-1.0.4-16.el7.x86_64
shadow-utils-4.1.5.1-24.el7.x86_64
util-linux-2.23.2-33.el7.x86_64
device-mapper-1.02.135-1.el7.x86_64
cryptsetup-libs-1.7.2-1.el7.x86_64
kmod-20-9.el7.x86_64
dbus-1.6.12-17.el7.x86_64
polkit-0.112-9.el7.x86_64
iputils-20160308-8.el7.x86_64
device-mapper-event-libs-1.02.135-1.el7.x86_64
dhclient-4.2.5-47.el7.centos.x86_64
os-prober-1.58-9.el7.x86_64
cronie-anacron-1.4.11-14.el7_2.1.x86_64
crontabs-1.11-6.20121102git.el7.noarch
libpciaccess-0.13.4-2.el7.x86_64
plymouth-scripts-0.8.9-0.26.20140113.el7.centos.x86_64
pciutils-3.5.1-1.el7.x86_64
dracut-network-033-463.el7.x86_64
device-mapper-event-1.02.135-1.el7.x86_64
dnsmasq-2.66-21.el7.x86_64
ebtables-2.0.10-15.el7.x86_64
gnutls-3.3.24-1.el7.x86_64
libsoup-2.48.1-6.el7.x86_64
fxload-2002_04_11-16.el7.x86_64
alsa-tools-firmware-1.1.0-1.el7.x86_64
libestr-0.1.9-2.el7.x86_64
libpipeline-1.2.3-3.el7.x86_64
kbd-legacy-1.15.5-12.el7.noarch
kernel-3.10.0-514.el7.x86_64
rsyslog-7.4.7-16.el7.x86_64
iprutils-2.4.13.1-1.el7.x86_64

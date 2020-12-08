=============SERVER DETAILS=====================
CentOS Linux release 8.1.1911 (Core) 
# dmidecode 3.2
Getting SMBIOS data from sysfs.
SMBIOS 2.7 present.

Handle 0x0001, DMI type 1, 27 bytes
System Information
	Manufacturer: VMware, Inc.
	Product Name: VMware Virtual Platform
	Version: None
	Serial Number: VMware-56 4d 12 db d6 7b 23 e9-f0 0f c8 44 44 39 45 7e
	UUID: db124d56-7bd6-e923-f00f-c8444439457e
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

Linux myworld.mash.com 4.18.0-147.8.1.el8_1.x86_64 #1 SMP Thu Apr 9 13:49:54 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
Tue May 19 22:42:22 SAST 2020
 22:42:22 up  8:16,  2 users,  load average: 0.32, 0.07, 0.02
=============DF Output===================
Filesystem           Size  Used Avail Use% Mounted on
devtmpfs             382M     0  382M   0% /dev
tmpfs                399M     0  399M   0% /dev/shm
tmpfs                399M  5.8M  393M   2% /run
tmpfs                399M     0  399M   0% /sys/fs/cgroup
/dev/mapper/cl-root  8.0G  1.5G  6.6G  18% /
/dev/sdc1            976M  137M  773M  15% /boot
tmpfs                 80M     0   80M   0% /run/user/0
tmpfs                 80M     0   80M   0% /run/user/1000
==============DF Count ==============
9
===============VGDISPLAY=====================
  --- Volume group ---
  VG Name               cl_worldprod
  System ID             
  Format                lvm2
  Metadata Areas        1
  Metadata Sequence No  3
  VG Access             read/write
  VG Status             resizable
  MAX LV                0
  Cur LV                2
  Open LV               0
  Max PV                0
  Cur PV                2
  Act PV                1
  VG Size               33.99 GiB
  PE Size               4.00 MiB
  Total PE              8702
  Alloc PE / Size       8702 / 33.99 GiB
  Free  PE / Size       0 / 0   
  VG UUID               H03Skq-RJcT-5uxl-mnTD-19vE-4eVy-xUf6Gr
   
  --- Logical volume ---
  LV Path                /dev/cl_worldprod/swap
  LV Name                swap
  VG Name                cl_worldprod
  LV UUID                LOe8kF-3IWl-DfNj-re3w-dFDc-fOYU-lcBFzP
  LV Write Access        read/write
  LV Creation host, time worldprod.mash.com, 2020-05-05 11:12:32 +0200
  LV Status              NOT available
  LV Size                2.12 GiB
  Current LE             543
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
   
  --- Logical volume ---
  LV Path                /dev/cl_worldprod/root
  LV Name                root
  VG Name                cl_worldprod
  LV UUID                yvDetI-67FU-hYv4-ul1x-ZtuJ-nlGi-9cJlaj
  LV Write Access        read/write
  LV Creation host, time worldprod.mash.com, 2020-05-05 11:12:32 +0200
  LV Status              NOT available
  LV Size                31.87 GiB
  Current LE             8159
  Segments               2
  Allocation             inherit
  Read ahead sectors     auto
   
  --- Physical volumes ---
  PV Name               [unknown]     
  PV UUID               r4a5XA-KiKQ-p0YX-bNfS-tILy-5cxT-0tgrOR
  PV Status             allocatable
  Total PE / Free PE    7423 / 0
   
  PV Name               /dev/sdd1     
  PV UUID               8yumkX-rVie-5X0e-SbGT-nPY1-u5s0-09YLEq
  PV Status             allocatable
  Total PE / Free PE    1279 / 0
   
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
  VG Size               <9.00 GiB
  PE Size               4.00 MiB
  Total PE              2303
  Alloc PE / Size       2303 / <9.00 GiB
  Free  PE / Size       0 / 0   
  VG UUID               nI2WYZ-HfvQ-YBiY-XRjl-311g-Y89d-P6Iwuk
   
  --- Logical volume ---
  LV Path                /dev/cl/swap
  LV Name                swap
  VG Name                cl
  LV UUID                VxlTmW-7NyE-8zRu-nkbc-Hpdx-NCyq-GrTEPI
  LV Write Access        read/write
  LV Creation host, time myworld.mash.com, 2020-05-05 12:01:19 +0200
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
  LV UUID                pqqckV-3Wtw-tTMH-NgZh-XKnJ-2h28-9DnlSc
  LV Write Access        read/write
  LV Creation host, time myworld.mash.com, 2020-05-05 12:01:19 +0200
  LV Status              available
  # open                 1
  LV Size                <8.00 GiB
  Current LE             2047
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     8192
  Block device           253:0
   
  --- Physical volumes ---
  PV Name               /dev/sdc2     
  PV UUID               SPb6Kx-i1Wy-Slxn-Y6YH-IkAg-YWLU-X00xph
  PV Status             allocatable
  Total PE / Free PE    2303 / 0
   
  --- Volume group ---
  VG Name               datavg1
  System ID             
  Format                lvm2
  Metadata Areas        1
  Metadata Sequence No  6
  VG Access             read/write
  VG Status             resizable
  MAX LV                0
  Cur LV                2
  Open LV               0
  Max PV                0
  Cur PV                1
  Act PV                1
  VG Size               <20.00 GiB
  PE Size               4.00 MiB
  Total PE              5119
  Alloc PE / Size       5095 / 19.90 GiB
  Free  PE / Size       24 / 96.00 MiB
  VG UUID               CcQ8Ro-ZipE-JTwW-cGdb-Y3I8-ckYb-1Rjegi
   
  --- Logical volume ---
  LV Path                /dev/datavg1/datalv1
  LV Name                datalv1
  VG Name                datavg1
  LV UUID                hY6Okp-ClZC-SuMU-6Svl-MHcm-tA5B-jg7GlF
  LV Write Access        read/write
  LV Creation host, time myworld.mash.com, 2020-03-31 14:53:49 +0200
  LV Status              available
  # open                 0
  LV Size                10.00 GiB
  Current LE             2560
  Segments               1
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     8192
  Block device           253:2
   
  --- Logical volume ---
  LV Path                /dev/datavg1/datalv2
  LV Name                datalv2
  VG Name                datavg1
  LV UUID                4hNLIr-FgjI-gCw9-XkIN-j5rD-fA4H-jJCTDI
  LV Write Access        read/write
  LV Creation host, time myworld.mash.com, 2020-03-31 15:14:48 +0200
  LV Status              available
  # open                 0
  LV Size                9.90 GiB
  Current LE             2535
  Segments               2
  Allocation             inherit
  Read ahead sectors     auto
  - currently set to     8192
  Block device           253:3
   
  --- Physical volumes ---
  PV Name               /dev/sdb     
  PV UUID               j3GbCV-1QdF-EJN0-xpOb-Q3Lk-ebxq-WeLlgQ
  PV Status             allocatable
  Total PE / Free PE    5119 / 24
   
=========================NFS Exported FS================
===============FSTAB DETAILS=====================

#
# /etc/fstab
# Created by anaconda on Tue May  5 06:01:21 2020
#
# Accessible filesystems, by reference, are maintained under '/dev/disk/'.
# See man pages fstab(5), findfs(8), mount(8) and/or blkid(8) for more info.
#
# After editing this file, run 'systemctl daemon-reload' to update systemd
# units generated from this file.
#
/dev/mapper/cl-root     /                       xfs     defaults        0 0
UUID=0009c72c-3dc0-4c8d-9830-e213f208a60b /boot                   ext4    defaults        1 2
/dev/mapper/cl-swap     swap                    swap    defaults        0 0
================NETWORK DETAILS====================
================Lan Details===========
-rw-r--r--. 1 root root 279 May  5 12:12 /etc/sysconfig/network-scripts/ifcfg-ens34
-rw-r--r--. 1 root root 279 May  5 12:12 /etc/sysconfig/network-scripts/ifcfg-ens33
-rw-r--r--. 1 root root 310 May  5 12:12 /etc/sysconfig/network-scripts/ifcfg-ens38
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=dhcp
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=ens33
UUID=58a8e8c3-89e5-4ee6-af94-7b91b76e1dc3
DEVICE=ens33
ONBOOT=no
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=dhcp
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=ens34
UUID=205e09ad-eca9-4ae4-b63a-870650d73b96
DEVICE=ens34
ONBOOT=no
TYPE="Ethernet"
PROXY_METHOD="none"
BROWSER_ONLY="no"
BOOTPROTO="dhcp"
DEFROUTE="yes"
IPV4_FAILURE_FATAL="no"
IPV6INIT="yes"
IPV6_AUTOCONF="yes"
IPV6_DEFROUTE="yes"
IPV6_FAILURE_FATAL="no"
IPV6_ADDR_GEN_MODE="stable-privacy"
NAME="ens38"
UUID="ea035d45-5449-4a38-959f-2012aa9c8b19"
DEVICE="ens38"
ONBOOT="yes"
================Disk Status/Multipathing ====================
Disk /dev/sda: 5 GiB, 5368709120 bytes, 10485760 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x93e5343f

Device     Boot Start      End  Sectors Size Id Type
/dev/sda1        2048 10485759 10483712   5G 83 Linux


Disk /dev/sdb: 20 GiB, 21474836480 bytes, 41943040 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/sdc: 10 GiB, 10737418240 bytes, 20971520 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x178c908c

Device     Boot   Start      End  Sectors Size Id Type
/dev/sdc1  *       2048  2099199  2097152   1G 83 Linux
/dev/sdc2       2099200 20971519 18872320   9G 8e Linux LVM


Disk /dev/sdd: 5 GiB, 5368709120 bytes, 10485760 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xbf91a4f9

Device     Boot Start      End  Sectors Size Id Type
/dev/sdd1        2048 10485759 10483712   5G 8e Linux LVM


Disk /dev/mapper/cl-root: 8 GiB, 8585740288 bytes, 16769024 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/mapper/cl-swap: 1 GiB, 1073741824 bytes, 2097152 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/mapper/datavg1-datalv1: 10 GiB, 10737418240 bytes, 20971520 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/mapper/datavg1-datalv2: 9.9 GiB, 10632560640 bytes, 20766720 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
================FC/SCSI Details===========
================Running DBs ===========
root       4594   4567  0 22:42 pts/1    00:00:00 grep -i pmon
=============Installed Pkg Details ==========
NetworkManager-libnm-1.20.0-5.el8_1.x86_64
python3-setuptools-wheel-39.2.0-5.el8.noarch
libsss_certmap-2.2.0-19.el8_1.1.x86_64
centos-repos-8.1-1.1911.0.9.el8.x86_64
selinux-policy-3.14.3-20.el8.noarch
geolite2-city-20180605-1.el8.noarch
kernel-modules-4.18.0-147.8.1.el8_1.x86_64
pcre2-10.32-1.el8.x86_64
python3-configobj-5.0.6-11.el8.noarch
glibc-common-2.28-72.el8_1.1.x86_64
python3-netifaces-0.10.6-4.el8.x86_64
zlib-1.2.11-10.el8.x86_64
python3-slip-0.6.4-11.el8.noarch
libcom_err-1.44.6-3.el8.x86_64
python3-schedutils-0.6-6.el8.x86_64
info-6.5-4.el8.x86_64
python3-idna-2.5-5.el8.noarch
readline-7.0-10.el8.x86_64
python3-cryptography-2.3-2.el8.x86_64
libffi-3.1-21.el8.x86_64
authselect-libs-1.1-2.el8.x86_64
libcap-ng-0.7.9-4.el8.x86_64
python3-slip-dbus-0.6.4-11.el8.noarch
which-2.21-10.el8.x86_64
libgudev-232-4.el8.x86_64
libidn2-2.2.0-1.el8.x86_64
grub2-tools-extra-2.02-78.el8_1.1.x86_64
jansson-2.11-3.el8.x86_64
fipscheck-1.5.0-4.el8.x86_64
sed-4.5-1.el8.x86_64
sssd-client-2.2.0-19.el8_1.1.x86_64
pcre-8.42-4.el8.x86_64
plymouth-scripts-0.9.3-15.el8.x86_64
libxslt-1.1.32-3.el8.x86_64
dracut-network-049-27.git20190906.el8_1.1.x86_64
gdbm-libs-1.18-1.el8.x86_64
gpgme-1.10.0-6.el8.0.1.x86_64
libcollection-0.7.0-39.el8.x86_64
python3-hawkey-0.35.1-9.el8_1.x86_64
xmlsec1-1.2.25-4.el8.x86_64
python3-rpm-4.14.2-26.el8_1.x86_64
diffutils-3.6-5.el8.x86_64
rhn-client-tools-2.8.16-13.module_el8.1.0+211+ad6c0bc7.x86_64
ethtool-5.0-2.el8.x86_64
dnf-plugin-spacewalk-2.8.5-11.module_el8.1.0+211+ad6c0bc7.noarch
libnfnetlink-1.0.1-13.el8.x86_64
sssd-nfs-idmap-2.2.0-19.el8_1.1.x86_64
libsss_idmap-2.2.0-19.el8_1.1.x86_64
rsyslog-8.37.0-13.el8.x86_64
slang-2.3.2-3.el8.x86_64
tuned-2.12.0-3.el8_1.1.noarch
libnetfilter_conntrack-1.0.6-5.el8.x86_64
passwd-0.80-2.el8.x86_64
device-mapper-persistent-data-0.8.5-2.el8.x86_64
chrony-3.5-1.el8.x86_64
acl-2.2.53-1.el8.x86_64
microcode_ctl-20190618-1.20191115.3.el8_1.x86_64
libpsl-0.20.2-5.el8.x86_64
dracut-config-rescue-049-27.git20190906.el8_1.1.x86_64
libcomps-0.1.11-2.el8.x86_64
prefixdevname-0.1.0-6.el8.x86_64
snappy-1.1.7-5.el8.x86_64
lshw-B.02.18-21.el8.x86_64
libpng-1.6.34-5.el8.x86_64
langpacks-en-1.0-12.el8.noarch
kernel-tools-libs-4.18.0-147.8.1.el8_1.x86_64
iwl6000g2a-firmware-18.168.6.1-94.el8.1.noarch
libfastjson-0.99.8-2.el8.x86_64
iwl4965-firmware-228.61.2.24-94.el8.1.noarch
brotli-1.0.6-1.el8.x86_64
iwl2000-firmware-18.168.6.1-94.el8.1.noarch
hdparm-9.54-2.el8.x86_64
iwl100-firmware-39.31.5.1-94.el8.1.noarch
libpath_utils-0.2.1-39.el8.x86_64
libpipeline-1.5.0-2.el8.x86_64
libsss_nss_idmap-2.2.0-19.el8_1.1.x86_64
libyaml-0.1.7-5.el8.x86_64
sg3_utils-libs-1.44-3.el8.x86_64
dnf-data-4.2.7-7.el8_1.noarch
fuse-2.9.7-12.el8.x86_64
xkeyboard-config-2.24-3.el8.noarch
openldap-2.4.46-11.el8_1.x86_64
libarchive-3.3.2-8.el8_1.x86_64
elfutils-default-yama-scope-0.176-5.el8.noarch
cracklib-dicts-2.9.6-15.el8.x86_64
libnsl2-1.2.0-2.20180605git4a062cf.el8.x86_64
rpm-4.14.2-26.el8_1.x86_64
libfdisk-2.32.1-17.el8.x86_64
coreutils-8.30-6.el8_1.1.x86_64
shadow-utils-4.6-8.el8.x86_64
kmod-25-13.el8.x86_64
systemd-pam-239-18.el8_1.5.x86_64
libdb-5.3.28-37.el8.x86_64
trousers-lib-0.3.14-4.el8.x86_64
gettext-0.19.8.1-17.el8.x86_64
gnutls-3.6.8-8.el8.x86_64
trousers-0.3.14-4.el8.x86_64
python3-libs-3.6.8-15.1.el8.x86_64
polkit-libs-0.115-9.el8.x86_64
iproute-4.18.0-15.el8.x86_64
cronie-1.5.2-4.el8.x86_64
libgcc-8.3.1-4.5.el8.x86_64
iputils-20180629-2.el8.x86_64
tzdata-2019c-1.el8.noarch
NetworkManager-1.20.0-5.el8_1.x86_64
python3-pip-wheel-9.0.3-15.el8.noarch
libevent-2.1.8-5.el8.x86_64
centos-release-8.1-1.1911.0.9.el8.x86_64
policycoreutils-2.9-3.el8_1.1.x86_64
setup-2.12.2-2.el8_1.1.noarch
rpm-plugin-selinux-4.14.2-26.el8_1.x86_64
geolite2-country-20180605-1.el8.noarch
selinux-policy-targeted-3.14.3-20.el8.noarch
basesystem-11-5.el8.noarch
python3-unbound-1.7.3-8.el8.x86_64
ncurses-base-6.1-7.20180224.el8.noarch
device-mapper-event-1.02.163-5.el8.0.1.x86_64
libselinux-2.9-2.1.el8.x86_64
timedatex-0.5-3.el8.x86_64
glibc-langpack-en-2.28-72.el8_1.1.x86_64
python3-dateutil-2.6.1-6.el8.noarch
glibc-2.28-72.el8_1.1.x86_64
python3-pyudev-0.21.0-7.el8.noarch
libsepol-2.9-1.el8.x86_64
python3-newt-0.52.20-9.el8.x86_64
xz-libs-5.2.4-3.el8.x86_64
python3-libselinux-2.9-2.1.el8.x86_64
bzip2-libs-1.0.6-26.el8.x86_64
python3-libxml2-2.9.7-5.el8.x86_64
libgpg-error-1.31-1.el8.x86_64
python3-perf-4.18.0-147.8.1.el8_1.x86_64
popt-1.16-14.el8.x86_64
python3-hwdata-2.3.6-3.el8.noarch
libcap-2.26-1.el8.x86_64
python3-asn1crypto-0.24.0-3.el8.noarch
libstdc++-8.3.1-4.5.el8.x86_64
python3-ply-3.9-7.el8.noarch
elfutils-libelf-0.176-5.el8.x86_64
python3-cffi-1.11.5-5.el8.x86_64
libgcrypt-1.8.3-4.el8.x86_64
python3-pyOpenSSL-18.0.0-1.el8.noarch
chkconfig-1.11-1.el8.x86_64
python3-syspurpose-1.25.17-1.el8.x86_64
gmp-6.1.2-10.el8.x86_64
initscripts-10.00.4-1.el8.x86_64
audit-libs-3.0-0.13.20190507gitf58ec40.el8.x86_64
python3-dbus-1.2.4-15.el8.x86_64
lua-libs-5.3.4-11.el8.x86_64
gobject-introspection-1.56.1-1.el8.x86_64
p11-kit-0.23.14-5.el8_0.x86_64
python3-firewall-0.7.0-5.el8_1.1.noarch
libunistring-0.9.9-3.el8.x86_64
libsecret-0.18.6-1.el8.x86_64
libtalloc-2.1.16-3.el8.x86_64
libuser-0.62-23.el8.x86_64
libassuan-2.5.1-3.el8.x86_64
xmlsec1-openssl-1.2.25-4.el8.x86_64
json-c-0.13.1-0.2.el8.x86_64
fipscheck-lib-1.5.0-4.el8.x86_64
libacl-2.2.53-1.el8.x86_64
openssh-8.0p1-4.el8_1.x86_64
libnl3-3.4.0-5.el8.x86_64
virt-what-1.18-6.el8.x86_64
lz4-libs-1.8.1.2-4.el8.x86_64
dracut-squash-049-27.git20190906.el8_1.1.x86_64
grep-3.1-6.el8.x86_64
plymouth-core-libs-0.9.3-15.el8.x86_64
libsemanage-2.9-1.el8.x86_64
plymouth-0.9.3-15.el8.x86_64
libtdb-1.3.18-2.el8.x86_64
dhcp-client-4.3.6-34.el8.x86_64
file-5.33-8.el8.x86_64
libusbx-1.0.22-1.el8.x86_64
keyutils-libs-1.5.10-6.el8.x86_64
gnupg2-2.2.9-1.el8.x86_64
libbasicobjects-0.1.1-39.el8.x86_64
librepo-1.10.3-3.el8.x86_64
libref_array-0.1.5-39.el8.x86_64
python3-libdnf-0.35.1-9.el8_1.x86_64
pciutils-libs-3.5.6-4.el8.x86_64
python3-librepo-1.10.3-3.el8.x86_64
libnl3-cli-3.4.0-5.el8.x86_64
rpm-build-libs-4.14.2-26.el8_1.x86_64
nettle-3.4.1-1.el8.x86_64
python3-dnf-4.2.7-7.el8_1.noarch
libgomp-8.3.1-4.5.el8.x86_64
python3-rhn-client-tools-2.8.16-13.module_el8.1.0+211+ad6c0bc7.x86_64
cpio-2.12-8.el8.x86_64
python3-dnf-plugins-core-4.0.8-3.el8.noarch
fuse-libs-2.9.7-12.el8.x86_64
python3-dnf-plugin-spacewalk-2.8.5-11.module_el8.1.0+211+ad6c0bc7.noarch
libedit-3.1-23.20170329cvs.el8.x86_64
logrotate-3.14.0-3.el8.x86_64
libpcap-1.9.0-3.el8.x86_64
libnfsidmap-2.3.3-26.el8.x86_64
libseccomp-2.4.1-1.el8.x86_64
sssd-common-2.2.0-19.el8_1.1.x86_64
libtasn1-4.13-3.el8.x86_64
NetworkManager-team-1.20.0-5.el8_1.x86_64
lzo-2.08-14.el8.x86_64
yum-4.2.7-7.el8_1.noarch
newt-0.52.20-9.el8.x86_64
open-vm-tools-10.3.10-3.el8_1.1.x86_64
nftables-0.9.0-14.el8_1.1.x86_64
openssh-clients-8.0p1-4.el8_1.x86_64
iptables-1.8.2-16.el8.x86_64
grub2-pc-2.02-78.el8_1.1.x86_64
libteam-1.28-4.el8.x86_64
firewalld-0.7.0-5.el8_1.1.noarch
gdbm-1.18-1.el8.x86_64
authselect-1.1-2.el8.x86_64
groff-base-1.22.3-18.el8.x86_64
lvm2-2.03.05-5.el8.0.1.x86_64
tar-1.30-4.el8.x86_64
NetworkManager-tui-1.20.0-5.el8_1.x86_64
grub2-pc-modules-2.02-78.el8_1.1.noarch
rng-tools-6.6-2.el8.x86_64
ipset-libs-7.1-1.el8.x86_64
sudo-1.8.25p1-8.el8_1.1.x86_64
mpfr-3.1.6-1.el8.x86_64
parted-3.2-38.el8.x86_64
libmetalink-0.1.3-7.el8.x86_64
e2fsprogs-1.44.6-3.el8.x86_64
mozjs60-60.9.0-3.el8.x86_64
man-db-2.7.6.1-17.el8.x86_64
coreutils-common-8.30-6.el8_1.1.x86_64
biosdevname-0.7.3-2.el8.x86_64
libss-1.44.6-3.el8.x86_64
iprutils-2.4.18.1-1.el8.x86_64
freetype-2.9.1-4.el8.x86_64
libselinux-utils-2.9-2.1.el8.x86_64
less-530-1.el8.x86_64
libestr-0.1.10-1.el8.x86_64
libmaxminddb-1.2.0-6.el8.x86_64
libmspack-0.7-0.1.alpha.el8.3.x86_64
c-ares-1.13.0-5.el8.x86_64
hardlink-1.3-6.el8.x86_64
libdaemon-0.14-15.el8.x86_64
libnghttp2-1.33.0-1.el8_0.1.x86_64
libini_config-1.3.1-39.el8.x86_64
libdrm-2.4.98-2.el8.x86_64
libsigsegv-2.11-5.el8.x86_64
libsss_autofs-2.2.0-19.el8_1.1.x86_64
libsss_sudo-2.2.0-19.el8_1.1.x86_64
libverto-0.3.0-5.el8.x86_64
ncurses-6.1-7.20180224.el8.x86_64
numactl-libs-2.0.12-7.el8.x86_64
linux-firmware-20190516-94.git711d3297.el8.noarch
libreport-filesystem-2.9.5-9.el8.x86_64
kbd-misc-2.0.4-8.el8.noarch
fuse-common-3.2.1-12.el8.x86_64
firewalld-filesystem-0.7.0-5.el8_1.1.noarch
dbus-common-1.12.8-9.el8.noarch
libxkbcommon-0.8.2-1.el8.x86_64
libssh-0.9.0-4.el8.x86_64
libcurl-7.61.1-11.el8.x86_64
libkcapi-hmaccalc-1.1.1-16_1.el8.x86_64
libdb-utils-5.3.28-37.el8.x86_64
openssl-1.1.1c-2.el8_1.1.x86_64
elfutils-libs-0.176-5.el8.x86_64
cracklib-2.9.6-15.el8.x86_64
procps-ng-3.3.15-1.el8.x86_64
libtirpc-1.1.4-4.el8.x86_64
kpartx-0.8.0-5.el8.x86_64
openssl-pkcs11-0.4.8-2.el8.x86_64
grub2-tools-minimal-2.02-78.el8_1.1.x86_64
libcroco-0.6.12-4.el8.x86_64
libmount-2.32.1-17.el8.x86_64
dbus-tools-1.12.8-9.el8.x86_64
systemd-libs-239-18.el8_1.5.x86_64
device-mapper-libs-1.02.163-5.el8.0.1.x86_64
ca-certificates-2019.2.32-80.0.el8_1.noarch
libutempter-1.1.6-14.el8.x86_64
kmod-libs-25-13.el8.x86_64
libpwquality-1.4.0-9.el8.x86_64
cryptsetup-libs-2.2.0-2.el8.x86_64
os-prober-1.74-6.el8.x86_64
pam-1.3.1-4.el8.x86_64
rpm-libs-4.14.2-26.el8_1.x86_64
openssl-libs-1.1.1c-2.el8_1.1.x86_64
crypto-policies-20190807-1.git9b1477b.el8.noarch
grub2-tools-2.02-78.el8_1.1.x86_64
shared-mime-info-1.9-3.el8.x86_64
dbus-1.12.8-9.el8.x86_64
systemd-udev-239-18.el8_1.5.x86_64
platform-python-pip-9.0.3-15.el8.noarch
platform-python-3.6.8-15.1.el8.x86_64
python3-six-1.11.0-8.el8.noarch
python3-decorator-4.2.1-2.el8.noarch
polkit-0.115-9.el8.x86_64
libsolv-0.7.4-3.el8.x86_64
device-mapper-event-libs-1.02.163-5.el8.0.1.x86_64
crontabs-1.11-16.20150630git.el8.noarch
lsscsi-0.30-1.el8.x86_64
rootfiles-8.1-22.el8.noarch
iwl6050-firmware-41.28.5.1-94.el8.1.noarch
iwl6000-firmware-9.221.4.1-94.el8.1.noarch
iwl5000-firmware-8.83.5.1_1-94.el8.1.noarch
iwl3945-firmware-15.32.2.9-94.el8.1.noarch
iwl2030-firmware-18.168.6.1-94.el8.1.noarch
iwl135-firmware-18.168.6.1-94.el8.1.noarch
iwl1000-firmware-39.31.5.1-94.el8.1.noarch
cronie-anacron-1.5.2-4.el8.x86_64
hwdata-0.314-8.2.el8_1.noarch
ima-evm-utils-1.1-5.el8.x86_64
centos-gpg-keys-8.1-1.1911.0.9.el8.noarch
libldb-1.5.4-2.el8.x86_64
filesystem-3.8-2.el8.x86_64
unbound-libs-1.7.3-8.el8.x86_64
publicsuffix-list-dafsa-20180723-1.el8.noarch
lvm2-libs-2.03.05-5.el8.0.1.x86_64
ncurses-libs-6.1-7.20180224.el8.x86_64
python3-linux-procfs-0.6-7.el8.noarch
bash-4.4.19-10.el8.x86_64
python3-libcomps-0.1.11-2.el8.x86_64
libxml2-2.9.7-5.el8.x86_64
python3-dmidecode-3.12.2-15.el8.x86_64
libxcrypt-4.1.1-4.el8.x86_64
kernel-tools-4.18.0-147.8.1.el8_1.x86_64
libuuid-2.32.1-17.el8.x86_64
python3-pycparser-2.14-14.el8.noarch
expat-2.2.5-3.el8.x86_64
python3-rhnlib-2.8.6-8.module_el8.1.0+211+ad6c0bc7.noarch
sqlite-libs-3.26.0-4.el8_1.x86_64
dbus-glib-0.110-2.el8.x86_64
libmnl-1.0.4-6.el8.x86_64
python3-gobject-base-3.28.3-1.el8.x86_64
findutils-4.6.0-20.el8.x86_64
pinentry-1.1.0-2.el8.x86_64
grub2-common-2.02-78.el8_1.1.noarch
bind-export-libs-9.11.4-26.P2.el8.x86_64
libattr-2.4.48-3.el8.x86_64
rpm-plugin-systemd-inhibit-4.14.2-26.el8_1.x86_64
libsmartcols-2.32.1-17.el8.x86_64
pciutils-3.5.6-4.el8.x86_64
libtevent-0.9.39-2.el8.x86_64
dhcp-libs-4.3.6-34.el8.x86_64
file-libs-5.33-8.el8.x86_64
gnupg2-smime-2.2.9-1.el8.x86_64
libaio-0.3.112-1.el8.x86_64
libdnf-0.35.1-9.el8_1.x86_64
libtool-ltdl-2.4.6-25.el8.x86_64
python3-gpg-1.10.0-6.el8.0.1.x86_64
libnftnl-1.1.1-4.el8.x86_64
dnf-4.2.7-7.el8_1.noarch
libksba-1.3.5-7.el8.x86_64
dnf-plugins-core-4.0.8-3.el8.noarch
libdhash-0.5.0-39.el8.x86_64
teamd-1.28-4.el8.x86_64
iptables-libs-1.8.2-16.el8.x86_64
sssd-kcm-2.2.0-19.el8_1.1.x86_64
p11-kit-trust-0.23.14-5.el8_0.x86_64
kexec-tools-2.0.19-12.el8_1.2.x86_64
squashfs-tools-4.3-19.el8.x86_64
openssh-server-8.0p1-4.el8_1.x86_64
iptables-ebtables-1.8.2-16.el8.x86_64
audit-3.0-0.13.20190507gitf58ec40.el8.x86_64
xz-5.2.4-3.el8.x86_64
kernel-4.18.0-147.8.1.el8_1.x86_64
vim-minimal-8.0.1763-13.el8.x86_64
irqbalance-1.4.0-4.el8.x86_64
ipset-7.1-1.el8.x86_64
xfsprogs-5.0.0-1.el8.x86_64
libicu-60.3-2.el8_1.x86_64
sg3_utils-1.44-3.el8.x86_64
e2fsprogs-libs-1.44.6-3.el8.x86_64
hostname-3.20-6.el8.x86_64
pigz-2.4-2.el8.x86_64
iwl7260-firmware-25.30.13.0-94.el8.1.noarch
libdnet-1.12-26.el8.x86_64
iwl5150-firmware-8.24.2.2-94.el8.1.noarch
ipcalc-0.2.4-3.el8.x86_64
iwl3160-firmware-25.30.13.0-94.el8.1.noarch
dmidecode-3.2-3.el8.x86_64
iwl105-firmware-18.168.6.1-94.el8.1.noarch
libndp-1.7-1.el8.x86_64
libpciaccess-0.14-1.el8.x86_64
gawk-4.2.1-1.el8.x86_64
libsysfs-2.1.0-24.el8.x86_64
npth-1.5-4.el8.x86_64
libssh-config-0.9.0-4.el8.noarch
kbd-legacy-2.0.4-8.el8.noarch
dhcp-common-4.3.6-34.el8.noarch
cyrus-sasl-lib-2.1.27-1.el8.x86_64
libkcapi-1.1.1-16_1.el8.x86_64
curl-7.61.1-11.el8.x86_64
gzip-1.9-9.el8.x86_64
krb5-libs-1.17-9.el8.x86_64
device-mapper-1.02.163-5.el8.0.1.x86_64
gettext-libs-0.19.8.1-17.el8.x86_64
dbus-libs-1.12.8-9.el8.x86_64
libblkid-2.32.1-17.el8.x86_64
dbus-daemon-1.12.8-9.el8.x86_64
kbd-2.0.4-8.el8.x86_64
dracut-049-27.git20190906.el8_1.1.x86_64
util-linux-2.32.1-17.el8.x86_64
grubby-8.40-37.el8.x86_64
glib2-2.56.4-7.el8.x86_64
systemd-239-18.el8_1.5.x86_64
platform-python-setuptools-39.2.0-5.el8.noarch
libmodulemd1-1.8.11-4.el8_1.x86_64
polkit-pkla-compat-0.1-12.el8.x86_64
kernel-core-4.18.0-147.8.1.el8_1.x86_64

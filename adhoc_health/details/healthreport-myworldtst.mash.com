Date:27.05.20-18:33
Server Name: myworldtst
uptime:  18:33:57 up  3:39,  2 users,  load average: 0.00, 0.01, 0.05

---------- Server performance details---------- 

top - 18:33:57 up  3:39,  2 users,  load average: 0.00, 0.01, 0.05
Tasks: 108 total,   1 running, 107 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.1 us,  0.2 sy,  0.0 ni, 99.6 id,  0.2 wa,  0.0 hi,  0.0 si,  0.0 st
KiB Mem :   999936 total,   526552 free,   144072 used,   329312 buff/cache
KiB Swap:  1048572 total,  1048572 free,        0 used.   667264 avail Mem 

   PID USER      PR  NI    VIRT    RES    SHR S %CPU %MEM     TIME+ COMMAND
     1 root      20   0  128128   6752   3984 S  0.0  0.7   0:02.23 systemd
     2 root      20   0       0      0      0 S  0.0  0.0   0:00.00 kthreadd
     3 root      20   0       0      0      0 S  0.0  0.0   0:00.08 ksoftirqd/0
     6 root      20   0       0      0      0 S  0.0  0.0   0:00.61 kworker/u2+

---------- Server CPU details---------- 

Linux 3.10.0-514.el7.x86_64 (myworldtst.mash.com) 	05/27/2020 	_x86_64_	(1 CPU)

06:33:57 PM     CPU     %user     %nice   %system   %iowait    %steal     %idle
06:34:02 PM     all      0.20      0.00      0.20      0.00      0.00     99.60
06:34:07 PM     all      0.00      0.00      0.00      0.00      0.00    100.00
06:34:12 PM     all      0.00      0.00      0.20      0.00      0.00     99.80
06:34:17 PM     all      0.00      0.00      0.00      0.00      0.00    100.00
06:34:22 PM     all      0.00      0.00      0.20      0.00      0.00     99.80
Average:        all      0.04      0.00      0.12      0.00      0.00     99.84
---------- Top 5 process Utilizing maximum CPU ---------- 

root 	3482 	0.7 	sshd:
root 	113 	0.1 	[kworker/0:3]
apache 	2094 	0.0 	/usr/sbin/httpd
apache 	2095 	0.0 	/usr/sbin/httpd
apache 	2097 	0.0 	/usr/sbin/httpd

---------- If there is high load, following are the culprit processess. ---------- 

---------- Server Memory details---------- 

              total        used        free      shared  buff/cache   available
Mem:            976         140         514           7         321         652
Swap:          1023           0        1023

---------- Top 5 process Utilizing maximum Memory -------- 

root 	668 	2.8 	/usr/bin/python2
root 	981 	1.6 	/usr/bin/python
root 	789 	1.5 	/sbin/dhclient
polkitd 	646 	1.4 	/usr/lib/polkit-1/polkitd
root 	671 	0.8 	/usr/sbin/NetworkManager

----------------------------------------------------------------------
----------------------------------------------------------------------

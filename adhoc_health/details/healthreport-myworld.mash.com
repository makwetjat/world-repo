Date:27.05.20-16:29
Server Name: myworld
uptime:  16:29:58 up  3:35,  2 users,  load average: 0.00, 0.00, 0.00

---------- Server performance details---------- 

top - 16:29:58 up  3:35,  2 users,  load average: 0.00, 0.00, 0.00
Tasks: 135 total,   2 running, 133 sleeping,   0 stopped,   0 zombie
%Cpu(s):  5.6 us, 11.1 sy,  0.0 ni, 83.3 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :    797.1 total,    212.3 free,    237.6 used,    347.1 buff/cache
MiB Swap:   1024.0 total,   1024.0 free,      0.0 used.    424.5 avail Mem 

   PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
     1 root      20   0  179112  13768   8460 S   0.0   1.7   0:04.59 systemd
     2 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kthreadd
     3 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_gp
     4 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_par_+

---------- Server CPU details---------- 

Linux 4.18.0-147.8.1.el8_1.x86_64 (myworld.mash.com) 	05/27/2020 	_x86_64_	(1 CPU)

04:29:58 PM     CPU     %user     %nice   %system   %iowait    %steal     %idle
04:30:03 PM     all      0.20      0.00      0.60      0.00      0.00     99.20
04:30:08 PM     all      0.00      0.00      0.40      0.00      0.00     99.60
04:30:13 PM     all      0.00      0.00      0.20      0.00      0.00     99.80
04:30:18 PM     all      0.00      0.00      0.40      0.00      0.00     99.60
04:30:23 PM     all      0.00      0.00      0.61      0.00      0.00     99.39
Average:        all      0.04      0.00      0.44      0.00      0.00     99.52
---------- Top 5 process Utilizing maximum CPU ---------- 

root 	10369 	0.3 	[kworker/0:0-events_power_efficient]
root 	10391 	0.2 	sshd:
world 	10395 	0.2 	/usr/lib/systemd/systemd
root 	1008 	0.1 	/usr/bin/vmtoolsd
chrony 	1012 	0.0 	/usr/sbin/chronyd

---------- If there is high load, following are the culprit processess. ---------- 

---------- Server Memory details---------- 

              total        used        free      shared  buff/cache   available
Mem:            797         236         213           5         347         425
Swap:          1023           0        1023

---------- Top 5 process Utilizing maximum Memory -------- 

root 	1081 	4.6 	/usr/libexec/platform-python
root 	1029 	4.5 	/usr/libexec/sssd/sssd_nss
root 	1098 	3.7 	/usr/libexec/platform-python
polkitd 	1004 	2.9 	/usr/lib/polkit-1/polkitd
root 	1082 	2.1 	/usr/sbin/NetworkManager

----------------------------------------------------------------------
----------------------------------------------------------------------
Date:27.05.20-16:31
Server Name: myworld
uptime:  16:31:48 up  3:37,  2 users,  load average: 0.00, 0.00, 0.00

---------- Server performance details---------- 

top - 16:31:48 up  3:37,  2 users,  load average: 0.00, 0.00, 0.00
Tasks: 137 total,   2 running, 135 sleeping,   0 stopped,   0 zombie
%Cpu(s):  0.0 us,  6.2 sy,  0.0 ni, 93.8 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :    797.1 total,    210.3 free,    238.8 used,    347.9 buff/cache
MiB Swap:   1024.0 total,   1024.0 free,      0.0 used.    423.0 avail Mem 

   PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
 11079 world     20   0   63880   4216   3648 R   6.2   0.5   0:00.01 top
     1 root      20   0  179112  13768   8460 S   0.0   1.7   0:04.62 systemd
     2 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kthreadd
     3 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_gp

---------- Server CPU details---------- 

Linux 4.18.0-147.8.1.el8_1.x86_64 (myworld.mash.com) 	05/27/2020 	_x86_64_	(1 CPU)

04:31:48 PM     CPU     %user     %nice   %system   %iowait    %steal     %idle
04:31:53 PM     all      0.00      0.00      0.60      0.00      0.00     99.40
04:31:58 PM     all      0.00      0.00      0.20      0.20      0.00     99.60
04:32:03 PM     all      0.00      0.00      0.60      0.00      0.00     99.40
04:32:08 PM     all      0.00      0.00      0.20      0.00      0.00     99.80
04:32:13 PM     all      0.00      0.00      0.60      0.00      0.00     99.40
Average:        all      0.00      0.00      0.44      0.04      0.00     99.52
---------- Top 5 process Utilizing maximum CPU ---------- 

root 	10369 	0.3 	[kworker/0:0-cgroup_pidlist_destroy]
root 	10812 	0.2 	[kworker/0:4-events]
root 	1008 	0.1 	/usr/bin/vmtoolsd
root 	10816 	0.1 	sshd:
world 	10820 	0.1 	/usr/lib/systemd/systemd

---------- If there is high load, following are the culprit processess. ---------- 

---------- Server Memory details---------- 

              total        used        free      shared  buff/cache   available
Mem:            797         238         211           5         347         423
Swap:          1023           0        1023

---------- Top 5 process Utilizing maximum Memory -------- 

root 	1081 	4.6 	/usr/libexec/platform-python
root 	1029 	4.5 	/usr/libexec/sssd/sssd_nss
root 	1098 	3.7 	/usr/libexec/platform-python
polkitd 	1004 	2.9 	/usr/lib/polkit-1/polkitd
root 	1082 	2.1 	/usr/sbin/NetworkManager

----------------------------------------------------------------------
----------------------------------------------------------------------
Date:27.05.20-16:37
Server Name: myworld
uptime:  16:37:01 up  3:42,  2 users,  load average: 0.00, 0.00, 0.00

---------- Server performance details---------- 

top - 16:37:02 up  3:42,  2 users,  load average: 0.00, 0.00, 0.00
Tasks: 138 total,   3 running, 135 sleeping,   0 stopped,   0 zombie
%Cpu(s):  5.9 us,  5.9 sy,  0.0 ni, 88.2 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
MiB Mem :    797.1 total,    209.9 free,    239.1 used,    348.1 buff/cache
MiB Swap:   1024.0 total,   1024.0 free,      0.0 used.    422.7 avail Mem 

   PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
 11502 world     20   0   63884   4276   3708 R   6.2   0.5   0:00.01 top
     1 root      20   0  179112  13768   8460 S   0.0   1.7   0:04.66 systemd
     2 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kthreadd
     3 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_gp

---------- Server CPU details---------- 

Linux 4.18.0-147.8.1.el8_1.x86_64 (myworld.mash.com) 	05/27/2020 	_x86_64_	(1 CPU)

04:37:02 PM     CPU     %user     %nice   %system   %iowait    %steal     %idle
04:37:07 PM     all      0.00      0.00      0.40      0.00      0.00     99.60
04:37:12 PM     all      0.00      0.00      0.40      0.00      0.00     99.60
04:37:17 PM     all      0.00      0.00      0.40      0.00      0.00     99.60
04:37:22 PM     all      0.00      0.00      0.40      0.00      0.00     99.60
04:37:27 PM     all      0.00      0.00      0.80      0.00      0.00     99.20
Average:        all      0.00      0.00      0.48      0.00      0.00     99.52
---------- Top 5 process Utilizing maximum CPU ---------- 

root 	10369 	0.2 	[kworker/0:0-events]
root 	1008 	0.1 	/usr/bin/vmtoolsd
root 	10381 	0.1 	[kworker/0:1-events]
root 	11239 	0.1 	sshd:
world 	11243 	0.1 	/usr/lib/systemd/systemd

---------- If there is high load, following are the culprit processess. ---------- 

---------- Server Memory details---------- 

              total        used        free      shared  buff/cache   available
Mem:            797         238         210           5         348         423
Swap:          1023           0        1023

---------- Top 5 process Utilizing maximum Memory -------- 

root 	1081 	4.6 	/usr/libexec/platform-python
root 	1029 	4.5 	/usr/libexec/sssd/sssd_nss
root 	1098 	3.7 	/usr/libexec/platform-python
polkitd 	1004 	2.9 	/usr/lib/polkit-1/polkitd
root 	1082 	2.1 	/usr/sbin/NetworkManager

----------------------------------------------------------------------
----------------------------------------------------------------------

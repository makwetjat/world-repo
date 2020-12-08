#!/bin/bash
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
NORMAL="\033[0;39m"
clear
echo -e $BIPurple"#############################################################################" $NORMAL
echo -e $BIGreen"	Please copy and paste any set of commands and then press Ctrl D        " $NORMAL
echo -e $BIGreen"	                                                                       " $NORMAL
echo -e $BIRed"      Please Do not use any sudo option E.g -K -b use below as an example       " $NORMAL
echo -e $BIGreen"	                                                                       " $NORMAL
echo -e $BIRed"  	     ansible host-pattern -m command -a 'module arguments'             " $NORMAL
echo -e $BIGreen"  	     ansible prod -m command -a 'cat /etc/redhat-release'              " $NORMAL
echo -e $BIGreen"	     ansible test -m service -a 'name=httpd state=restarted'           " $NORMAL
echo -e $BIPurple"#############################################################################" $NORMAL
cat > /home/world/ansible/nwr/copyrunscrpt/adhoc.sh
chmod 777 /tmp/adhoc
echo -e $BIPurple"Please select your choice from below menu" $NORMAL
echo -e $BIPurple"Press "y" if you want to run the scripts as root" $NORMAL
echo -e $BIPurple"Press "n" run as normal user" $NORMAL
echo -e $BIPurple"press "x" for exist" $NORMAL
read y
case $y in
y)
sed -e '1s/$/ -b -K/' /home/world/ansible/nwr/copyrunscrpt/adhoc.sh > /home/world/ansible/nwr/copyrunscrpt/adhoc_new.sh
date >> /home/world/ansible/logs/adhoc.log
sh /home/world/ansible/nwr/copyrunscrpt/adhoc_new.sh >> /home/world/ansible/logs/adhoc.log
echo -e $BIGreen"Please check for Output /home/world/ansible/logs/adhoc.log" $NORMAL
;;
n)
sed -e '1s/$/ -K/' /home/world/ansible/nwr/copyrunscrpt/adhoc.sh > /home/world/ansible/nwr/copyrunscrpt/adhoc_new.sh
date >> /home/world/ansible/logs/adhoc.log
sh /home/world/ansible/nwr/copyrunscrpt/adhoc_new.sh > /home/world/ansible/logs/adhoc.log
echo -e $BIGreen"Please check for Output /home/world/ansible/logs/adhoc.log" $NORMAL
;;
x)
exit
;;
*)
  echo "Invalid input , Please enter correct choice "
;;
esac

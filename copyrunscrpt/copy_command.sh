#!/bin/bash
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
NORMAL="\033[0;39m"
clear
echo -e $BIPurple"##############################################################################################################" $NORMAL
echo -e $BIGreen"	           Please type in or copy and paste copy commands and then press Ctrl D                         " $NORMAL
echo -e $BIGreen"	                                                                        		                " $NORMAL
echo -e $BIRed"                    Please Do not use any sudo option E.g -K -b use below as an example                          " $NORMAL
echo -e $BIGreen"	                                                                           			        " $NORMAL
echo -e $BIGreen"	                        Use the following as an example                  			        " $NORMAL
echo -e $BIGreen"	                                                                           			        " $NORMAL
echo -e $BIRed"   ansible test -m copy -a 'src=/home/world/ansible/logs/adhoc.log dest=/tmp owner=user group=groupname mode=775' " $NORMAL
echo -e $BIGreen"														" $NORMAL
echo -e $BIRed"   ansible techlnx8.mip.co.za -m copy -a 'src=/tmp/targets des=/tmp owner=user group=groupname mode=775'         " $NORMAL
echo -e $BIGreen"  							  		             			        " $NORMAL
echo -e $BIGreen"  	          src=source dest=destination mode=permissions owner=user group=groupname  		        " $NORMAL
echo -e $BIGreen"  							  		             			        " $NORMAL
echo -e $BIGreen"	    	  check /home/world/dep-config/hosts for a list of Servers/Group of Servers		        " $NORMAL
echo -e $BIPurple"##############################################################################################################" $NORMAL
cat > /home/world/ansible/nwr/copyrunscrpt/copy.sh
chmod 777 /tmp/copy
echo -e $BIPurple"Please select your choice from below menu" $NORMAL
echo -e $BIPurple"Press "y" if you want to run the scripts as root" $NORMAL
echo -e $BIPurple"Press "n" run as normal user" $NORMAL
echo -e $BIPurple"press "x" for exist" $NORMAL
read y
case $y in
y)
sed -e '1s/$/ -b -K/' /home/world/ansible/nwr/copyrunscrpt/copy.sh > /home/world/ansible/nwr/copyrunscrpt/copy_new.sh
date >> /home/world/ansible/logs/copy.log
sh /home/world/ansible/nwr/copyrunscrpt/copy_new.sh >> /home/world/ansible/logs/copy.log
echo -e $BIGreen"Please check for Output /home/world/ansible/logs/copy.log" $NORMAL
;;
n)
sed -e '1s/$/ -K/' /home/world/ansible/nwr/copyrunscrpt/copy.sh > /home/world/ansible/nwr/copyrunscrpt/copy_new.sh
date >> /home/world/ansible/logs/copy.log
sh /home/world/ansible/nwr/copyrunscrpt/adhoc_new.sh > /home/world/ansible/logs/copy.log
echo -e $BIGreen"Please check for Output /home/world/ansible/logs/adhoc.log" $NORMAL
;;
x)
exit
;;
*)
  echo "Invalid input , Please enter correct choice "
;;
esac

clear
#USING SOME COLORS

red='\033[1;31m'
green='\033[1;32m'
blue='\033[1;34m'
yellow='\033[1;33m'
cyan='\033[1;96m'
yellow='\033[1;33m'
reset='\033[0m'

#give permission to all files
chmod +x *

##BANNER##

printf "${blue}##################################################\n"
    printf "${blue}##                                              ##\n"
    printf "${blue}##  88      a8P         db        88        88  ##\n"
    printf "${blue}##  88    .88'         d88b       88        88  ##\n"
    printf "${green}##  88   88'          d8''8b      88        88  ##\n"
    printf "${green}##  88 d88           d8'  '8b     88        88  ##\n"
    printf "${green}##  8888'88.        d8YaaaaY8b    88        88  ##\n"
    printf "${green}##  88P   Y8b      d8''''''''8b   88        88  ##\n"
    printf "${red}##  88     '88.   d8'        '8b  88        88  ##\n"
    printf "${red}##  88       Y8b d8'          '8b 888888888 88  ##\n"
    printf "${red}##                                              ##\n"
    printf "${red}##################################################$\n"
    printf "${cyan}########## ALL IN ONE NETHUNTER TOO #############\n"
    printf "${yellow}############## CODED BY K.K. ####################${reset}\n"


#INSTALLATION#
#Be A creative person not copy paster#
#TAKE INPUT FROM USR
echo "                                               "
echo "                                               "
echo "                                               "

printf "${green}#############################################\n"
printf "${green}##         [1] INSTALL NETHUNTER           ##\n"
printf "${green}##         [2] KEX-VNC                     ##\n"
printf "${green}##         [3] ABOUT US                    ##\n"
printf "${green}#############################################${reset}\n"
read -p "ENTER THE NUMBER:" inp

if [ "$inp" = 1 ];
then
termux-setup-storage
sleep 1.5
pkg install wget -y 
sleep 1.5
wget -O install-nethunter-termux https://offs.ec/2MceZWr
sleep 1.5
chmod +x install-nethunter-termux
sleep 1.5
./install-nethunter-termux

#IF USER INPUT = 2 
#IF USER SELECT TO OPTION KEX
elif [ "$inp" = 2 ];
then
printf "${cyan}#############################################\n"    
printf "${cyan}##          [1] REPAIR-KEX                 ##\n"
printf "${cyan}##          [2] START-KEX                  ##\n"
printf "${cyan}##          [3] STOP-KEX                   ##\n"
printf "${cyan}##          [4] KEX PASSWD                 ##\n"
printf "${cyan}###########################################${reset}\n"
read -p "ENTER THE NUMBER:" inp1

#IF USER INPUT = 1
#IF USER SELECT TO OPTION REPAIR-KEX
if  [ "$inp1" = 1 ];
then
./repair-kex

#IF USER INPUT = 2
#IF USER SELECT TO OPTION START-KEX
elif [ "$inp1" = 2 ];
then 
./start-kex
echo "please open VNC VIEWER app and enter your details"
echo "adress:localhost:1 | passwd:Your passwd"

#IF USER INPUT = 3
#IF USER SELECT TO OPTION STOP-KEX
elif [ "$inp1" = 3 ];
then
./stop-kex

#IF USER INPUT = 4
#IF USER SELECT TO OPTION KEX-PASSWD
elif [ "$inp1" = 4 ];
then
./kex-passwd

#ELSE
else
echo "please enter valid input"
fi

#IF USER INPUT = 3
#IF USER SELECT TO OPTION ABOUT US
elif [ "$inp" = 3 ];
then
echo "HACKING HUB"
echo "Mr.K.k"
echo "CODER \\ HACKER // PROGRAMMER"

else
echo "please enter valid input"

fi

#ZRoot Tool By Fake✘Smile
#Zyntax™
#bash
#DO NOT STEAL MY SCRIPT YOU BLOODY F*CKER 😒

RD='\e[1;31m'
GR='\e[1;32m'
YL='\e[1;33m'
BL='\e[1;34m'
PP='\e[1;35m'
LBL='\e[1;36m'
GY='\e[1;30m'
WH='\e[1;37m'

clear
#pkg installation
pkg install ruby -y
pkg install figlet -y
gem install lolcat

cd $HOME
cd ZRoot

echo
clear
figlet ZRoot | lolcat
echo
echo -e $GR "Developed By FAKE✘SMILE"
echo -e $GR "Powered By Zyntax™"
echo
echo -e $RD "You may use this tool at your own risk. We at Zyntax™ do not hold any responsibility"
sleep 2
echo
echo -e $GR "Press Enter to continue.."
read
clear
echo -e $YL "[#] Creating the platform for the rooting process"
echo
pkg install proot-distro -y
clear
echo -e $GR "The ZRoot tool is under development. You will be rooted using Ubuntu version (20.04). Arch Linux and Debian root directories will be added ASAP.."
echo
echo -e $YL "[#] Fetching the root directories ( Ubuntu 20.04 )"
proot-distro install ubuntu
clear
echo -e $GR "Successfully completed the root process.."
echo -e $GR "Errors - 0		Warnings - 0"
echo -e $GR "[#] Enter Your Username : "
read name
echo -e "clear" >clear.txt
echo -e "figlet "$name" | lolcat" >name.txt
echo "PS1='\$ '" >mark.txt

rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc
rm -rf /data/data/com.termux/files/usr/etc/zshrc

touch bash.bashrc

cp bash.bashrc /data/data/com.termux/files/usr/etc/
echo -e $RD "Do you want to enable root login option"
echo -e "( Enter 1 if you want.. )"
read pass
if [ $pass -eq 1 ]
then
        cat "clear.txt" >>/data/data/com.termux/files/usr/etc/bash.bashrc

	cat "name.txt" >>/data/data/com.termux/files/usr/etc/bash.bashrc

        cat "root.txt" >>/data/data/com.termux/files/usr/etc/bash.bashrc

        cat "mark.txt" >>/data/data/com.termux/files/usr/etc/bash.bashrc
else
        echo -e $RD"Root Login option is disabled by the user!"
fi

rm -rf clear.txt
rm -rf root.txt
rm -rf name.txt
rm -rf mark.txt
rm -rf bash.bashrc

cd
cd ..
cd usr
cd etc

rm -rf zshrc

touch zshrc

cat bash.bashrc >>/data/data/com.termux/files/usr/etc/zshrc

figlet rooted! | lolcat
echo
if [ $pass -eq 1 ]
then
        echo -e $GR "The terminal has been rooted and the root login option has been enabled. You can choose the root or non-root login at the start"
	echo
        echo -e $GR "please restart the termux application or start a new session"
else
        echo -e $RD "Type (proot-distro login ubuntu) for custom root login"
fi
echo
echo -e $GR "ZRoot v 1.1 by FAKE SMILE"

cd $HOME
rm -rf ZRoot
sleep 2
exit

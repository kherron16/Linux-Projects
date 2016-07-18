et the default directory
cd /etc/profile.d

#add users's home to PATH
export PATH=$PATH:/~

#test export
#export PS1="\e[0;32m[\h_\u_\w_\T::\[$(tput sgr0)\]\e[m"

#stop vbox sync
service vboxadd-service stop

#hostname to determine which prompt color
a=$HOSTNAME
echo $a

case "$a" in
     master) export PS1="\e[0;41m[\h_\u_\w_\T\[$(tput sgr0)\]\e[m";;
     minion) export PS1="\e[0;42m[\h_\u_\w_\T\[$(tput sgr0)\]\e[m";;
esac

#change prompt color if user is root

b=$USER
echo $b

case "$b" in
     root) export PS1="\e[0;45m[\h_\u_\w_\T\[$(tput sgr0)\]\e[m";;
     *) true ;;
esac

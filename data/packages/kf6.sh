. /etc/profile
if [ -f /sources/uname.sh ]
then
. /sources/uname.sh
fi

uname -m
sleep 30

chimp init_kf6
sleep 30
chimp install kf6


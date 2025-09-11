. /etc/profile
if [ -f /sources/uname.sh ]
then
. /sources/uname.sh
fi

uname -m
sleep 30

chimp install qtwebengine6


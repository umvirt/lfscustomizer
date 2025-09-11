. /etc/profile
if [ -f /sources/uname.sh ]
then
. /sources/uname.sh
fi

uname -m
sleep 30

chimp install mc
chimp install nano
chimp install openssh
chimp install links
chimp install git
chimp install rsync


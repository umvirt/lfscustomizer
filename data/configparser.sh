if [[ $LFS_TARGET_ARCH == "" ]]
then
LFS_TARGET_ARCH='amd64'
fi
if [[ $LFS_TARGET_INIT == "" ]]
then
LFS_TARGET_INIT='systemd'
fi

if [[ $FORMATSOURCESDISK == "" ]]
then
FORMATSOURCESDISK='YES'
fi

if [[ $ZEROFILL == "" ]]
then
ZEROFILL='YES'
fi


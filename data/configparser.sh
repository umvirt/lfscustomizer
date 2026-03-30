if [[ $LFS_PARTITION == "" ]]
then
LFS_PARTITION='/dev/sda1'
fi
if [[ $LFS_RUNNING_PARTITION == "" ]]
then
LFS_RUNNING_PARTITION='/dev/sda1'
fi
if [[ $LFS_RUNNING_DISK_NUMBER == "" ]]
then
LFS_RUNNING_DISK_NUMBER=0
fi
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
if [[ $LFS_MBR == "" ]]
then
LFS_MBR='YES'
fi

LFS_DISK=`echo $LFS_PARTITION | sed -e 's/[0-9]*$//'`
LFS_RUNNING_DISK=`echo $LFS_RUNNING_PARTITION | sed -e 's/[0-9]*$//'`
LFS_RUNNING_PARTITION_NUMBER=`echo $LFS_RUNNING_PARTITION | sed -e "s|$LFS_RUNNING_DISK||"`

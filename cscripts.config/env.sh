. /cscripts/config.sh
PATH=/usr/bin:/usr/sbin
LC_ALL=POSIX
LFS_TGT=$(uname -m)-lfs-linux-gnu
LANG=C
export PATH LANG ULFS_TESTS ULFS_CRITICAL_TESTS ULFS_DOCS NINJAJOBS MAKEFLAGS LFS_TGT
PWD=`pwd`
echo "PWD DIR: $PWD"
echo "RUN TESTS: $ULFS_TESTS"
echo "RUN CRITICAL TESTS: $ULFS_CRITICAL_TESTS"
echo "INSTALL DOCUMENTATION: $ULFS_DOCS"
echo
echo "MAKE FLAGS: $MAKEFLAGS"
echo "NINJA THREADS: $NINJAJOBS"

sleep 1

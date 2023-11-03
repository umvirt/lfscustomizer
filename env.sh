#Configuration file for scripts to run on host as root

PWD=`pwd`
LFS="$PWD/builddir"
MAKEFLAGS="-j`nproc`"
LOCALREPO=NO
LOCALREPOIP=127.0.0.1

echo $LFS

export PWD LFS MAKEFLAGS

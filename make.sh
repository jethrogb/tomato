#!/bin/sh
if [ -z "$V2" -a ! "$1" = "help" ]; then
	echo "Usage: V2=version-identifier $0 ..." > /dev/stderr
	exit 2
fi
cd "$(dirname "$0")"
export PATH=$PATH:$(readlink -f tools/brcm/hndtools-mipsel-linux/bin):$(readlink -f tools/brcm/hndtools-mipsel-uclibc/bin):$(readlink -f release/tools)
NUMCPUS=$(grep -c '^processor' /proc/cpuinfo)
cd release/src-rt
make V1=$(date +%Y%m%d) "V2=$V2" -j$NUMCPUS -l$NUMCPUS "$@"

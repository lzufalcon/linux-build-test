#!/bin/bash

dir=$(cd $(dirname $0); pwd)
. ${dir}/../scripts/config.sh
. ${dir}/../scripts/common.sh

QEMU=${QEMU:-${QEMU_BIN}/qemu-system-cris}
PREFIX=crisv32-linux-
ARCH=cris
rootfs=busybox-cris.cpio
PATH_CRIS=/opt/kernel/crisv32/gcc-4.9.2/usr/bin

PATH=${PATH_CRIS}:${PATH}

patch_defconfig()
{
    local defconfig=$1

    # Specify initramfs file name
    sed -i -e '/CONFIG_INITRAMFS_SOURCE/d' ${defconfig}
    echo "CONFIG_INITRAMFS_SOURCE=\"$(rootfsname ${rootfs})\"" >> ${defconfig}
}

runkernel()
{
    local defconfig=$1
    local pid
    local waitlist=("Requesting system reboot" "Boot successful" "reboot: Restarting system")
    local logfile="$(__mktemp)"

    echo -n "Building ${ARCH}:${defconfig} ... "

    dosetup -f fixup -d ${rootfs} ${defconfig}
    if [ $? -ne 0 ]
    then
	return 1
    fi

    echo -n "running ..."

    ${QEMU} -serial stdio -kernel vmlinux \
    	-no-reboot -monitor none -nographic \
	-append "console=ttyS0,115200,N,8 rdinit=/sbin/init" \
	> ${logfile} 2>&1 &

    pid=$!

    dowait ${pid} ${logfile} automatic waitlist[@]
    return $?
}

echo "Build reference: $(git describe)"
echo

runkernel qemu_crisv32_defconfig

exit $?

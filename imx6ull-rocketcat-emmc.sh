#!/bin/sh

set -e

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- distclean
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- imx_rocketcat_emmc_defconfig
make HOSTCFLAGS="-fcommon" ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- all -j$(nproc)

cp arch/arm/boot/zImage ~/Bsp-Project/nfs/ -f
cp arch/arm/boot/dts/imx6ull-rocketcat-emmc.dtb ~/Bsp-Project/nfs/ -f
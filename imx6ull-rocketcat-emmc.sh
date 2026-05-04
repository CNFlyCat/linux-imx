#!/bin/sh

set -e

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- distclean
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- imx_v7_defconfig
make HOSTCFLAGS="-fcommon" ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- all -j$(nproc)
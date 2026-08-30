#!/bin/bash
set -e
export PATH=/home/abc/krnl/clang/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export KBUILD_BUILD_USER=kotiktesei
export KBUILD_BUILD_HOST=forcamellia
MAKE="make O=out ARCH=arm64 CC=clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE=aarch64-linux-gnu- -j12"
$MAKE camellia_defconfig
$MAKE Image.gz-dtb
echo BUILD_DONE_OK

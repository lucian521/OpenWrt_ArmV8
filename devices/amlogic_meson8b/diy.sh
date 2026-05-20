#!/bin/bash

shopt -s extglob

SHELL_FOLDER=$(dirname $(readlink -f "$0"))

#bash $SHELL_FOLDER/../common/kernel_6.1.sh

#rm -rf package/kernel/mac80211

#git_clone_path c640f7b93736621b4d56627e4f6ab824093f9c3d https://github.com/openwrt/openwrt package/kernel/mac80211

sed -i 's/Os/O2/g' include/target.mk

git_clone_path main https://github.com/lxiaya/openwrt-onecloud target/linux/amlogic

mv -f target/linux/amlogic/patches-6.6 target/linux/amlogic/patches-6.12
mv -f target/linux/amlogic/meson8b/config-6.6 target/linux/amlogic/meson8b/config-6.12

sed -i "s/KERNEL_PATCHVER:=6.6/KERNEL_PATCHVER:=6.12/" target/linux/amlogic/Makefile

sed -i "s/wpad-openssl/wpad-basic-mbedtls/" target/linux/amlogic/image/Makefile

sed -i "s/neon-vfpv4/vfpv4/" target/linux/amlogic/meson8b/target.mk



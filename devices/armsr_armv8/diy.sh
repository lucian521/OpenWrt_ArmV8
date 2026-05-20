

SHELL_FOLDER=$(dirname $(readlink -f "$0"))

sed -i 's/Os/O2/g' include/target.mk

#rm -rf package/feeds/kiddin9/rtl8188eu package/feeds/kiddin9/rtl8192eu package/feeds/kiddin9/rtl8812au-ac



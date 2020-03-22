#!/bin/sh
wget -N http://www.tbsdtv.com/download/document/linux/tbs-tuner-firmwares_v1.0.tar.bz2
tar jxvf tbs-tuner-firmwares_v1.0.tar.bz2 -C /lib/firmware/

git submodule update --recursive --remote

cd media_build 
if [ -z "$kernelver" ]; then kernelver=`uname -r` ; fi
make dir DIR=../media KERNELRELEASE=$kernelver 
make allyesconfig 
make -j$(grep -c ^processor /proc/cpuinfo 2>/dev/null) KERNELRELEASE=$kernelver

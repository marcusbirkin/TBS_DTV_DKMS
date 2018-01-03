#!/bin/sh
cd media_build 
make dir DIR=../media KERNELRELEASE=$kernelver 
make distclean 
make -j$(grep -c ^processor /proc/cpuinfo 2>/dev/null) KERNELRELEASE=$kernelver

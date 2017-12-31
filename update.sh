#!/bin/sh
git submodule update

cd media_build
git pull origin master --depth=1
cd ..

git submodule init media
cd media
git pull origin latest --depth=1
cd ..

git submodule status --recursive

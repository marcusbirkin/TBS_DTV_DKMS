#!/bin/sh
git remote update
git pull
git reset --hard
git submodule foreach git remote update
git submodule foreach git pull
git submodule foreach git reset --hard
git submodule foreach git clean -fx -fd

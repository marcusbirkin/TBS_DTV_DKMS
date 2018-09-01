#!/bin/sh
git submodule foreach git remote update
git submodule foreach git pull
git submodule foreach git reset --hard

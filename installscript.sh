#!/bin/bash
# add backup of old files
WD=$(pwd)
DIRS=$(find . -type d -not -path "./.git*" | sed 's|^./||')
FILES=$(find . -type f -not -path "./.git*" | sed 's|^./||')
for d in $DIRS
do
    if [ ! -d ~/$d ]; then
        echo "creating directory: ~/$d"
        mkdir -p ~/$d
    fi
done
for f in $FILES
do
    if [ $f == "$0" ];then
        continue
    fi
    if [ -e ~/$f ]; then
        echo "File ~/$f already exists -> skipping"
        continue
    fi
    echo "creating syslink: ~/$f -> $WD/$f"
    ln -s $WD/$f ~/$f
done

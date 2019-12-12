#!/usr/bin/env bash
mydir="$PWD"

rm -f pirate-qt-linux
make clean
zcutil/build.sh -j8
cp src/qt/komodo-qt "$mydir"/pirate-qt-linux
rm src/qt/komodo-qt

./pirate-qt-linux
#!/bin/bash
VERSION=$1
YEAR=$2
cd ~/workdir
wget https://www.sqlite.org/${YEAR}/sqlite-src-${VERSION}.zip
unzip sqlite-src-${VERSION}.zip
cd sqlite-src-${VERSION}
./configure --enable-fts5
make
sudo make install

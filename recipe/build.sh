#!/usr/bin/env bash

cd nspr

./configure --prefix="${PREFIX}" --enable-64bit --disable-debug --enable-optimize 

make -j $CPU_COUNT
make install

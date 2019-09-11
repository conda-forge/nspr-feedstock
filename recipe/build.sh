#!/usr/bin/env bash

cd nspr

./configure --prefix="${PREFIX}" --enable-64bit --disable-debug --enable-optimize 

gmake -j $CPU_COUNT
gmake install

#!/usr/bin/env bash
OSNAME=$(uname)

cd nspr

if [ "${OSNAME}" == Linux ]; then
    sed -ri 's#^(RELEASE_BINS =).*#\1#' pr/src/misc/Makefile.in
    sed -i 's#$(LIBRARY) ##'            config/rules.mk
fi


./configure --prefix="${PREFIX}" --enable-64bit --disable-debug --enable-optimize --with-pthreads --with-mozilla

make -j $CPU_COUNT
make install

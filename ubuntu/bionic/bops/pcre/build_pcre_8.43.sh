#!/bin/bash
PCRE_VERSION=8.43
BUILD_ROOT=${BUILD_ROOT:-/build}

set -e
mkdir -p ${BUILD_ROOT}/pcre
cd ${BUILD_ROOT}/pcre
wget https://ftp.pcre.org/pub/pcre/pcre-${PCRE_VERSION}.tar.gz
tar -xzvf pcre-${PCRE_VERSION}.tar.gz
cd pcre-${PCRE_VERSION}
./configure
make
make install
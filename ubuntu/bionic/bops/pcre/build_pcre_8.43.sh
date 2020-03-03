#!/bin/bash
PCRE_VERSION=8.43
BUILD_ROOT=${BUILD_ROOT:-/build}

apt-get install -y gcc build-essential

set -e
mkdir -p ${BUILD_ROOT}/pcre

rm -rf /built
mkdir -p /built

cd ${BUILD_ROOT}/pcre
wget https://ftp.pcre.org/pub/pcre/pcre-${PCRE_VERSION}.tar.gz
tar -xzvf pcre-${PCRE_VERSION}.tar.gz
cd pcre-${PCRE_VERSION}
./configure --prefix /built
make
make install
tar -czf -C /usr /root/pcre_${PCRE_VERSION}.tar.gz /built
aws s3 cp /root/pcre_${PCRE_VERSION}.tar.gz s3://boot.agilesyndro.me/ubuntu/bionic/pcre/pcre_${PCRE_VERSION}.tar.gz

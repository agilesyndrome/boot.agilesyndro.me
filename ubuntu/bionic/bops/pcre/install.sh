#!/bin/bash
PCRE_VERSION=${1}

aws s3 cp s3://boot.agilesyndro.me/ubuntu/bionic/pcre/pcre_${PCRE_VERSION}.tar.gz /root/pcre_${PCRE_VERSION}.tar.gz
(cd /usr; tar -xzvf /root/pcre_8.43.tar.gz --strip 1)
rm -f /root/pcre_${PCRE_VERSION}.tar.gz
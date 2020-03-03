FROM ubuntu:bionic

RUN apt-get update \
 && apt-get install -y \
  curl \
  wget \
  build-essential \
  gcc

RUN echo 'curl https://raw.githubusercontent.com/agilesyndrome/boot.agilesyndro.me/master/ubuntu/bionic/bops/${@} |bash' > /usr/local/bin/bop \
 && chmod +x /usr/local/bin/bop

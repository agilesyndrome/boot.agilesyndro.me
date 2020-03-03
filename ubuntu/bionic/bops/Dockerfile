FROM ubuntu:bionic

RUN apt-get update \
 && apt-get install -y \
  curl \
  wget \
  build-essential \
  gcc \
  python3 \
  python3-distutils \
 && update-alternatives --install /usr/bin/python python /usr/bin/python3 1 \
 && curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
 && python get-pip.py \
 && pip install awscli

COPY . /app

WORKDIR /app

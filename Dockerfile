FROM debian:wheezy

MAINTAINER Greg Keys <gkeys@mumbacloud.com>

RUN apt-get update -y && \
    apt-get install --no-install-recommends -y -q \
    curl \
    python \
    ca-certificates \
    python-pip \
    build-essential \
    git \
    g++ \
    flex \
    bison \
    gperf \
    ruby \
    perl \
    libsqlite3-dev \
    libfontconfig1-dev \
    libicu-dev \
    libfreetype6 \
    libssl-dev \
    libpng-dev \
    libjpeg-dev \
    libx11-dev \
    libxext-dev \
    ttf-mscorefonts-installer


RUN mkdir /nodejs && curl http://nodejs.org/dist/v5.4.1/node-v5.4.1-linux-x64.tar.gz | tar xvzf - -C /nodejs --strip-components=1

ENV PATH $PATH:/nodejs/bin

RUN pip install awscli awsebcli

RUN npm install -g

RUN git clone --recurse-submodules git://github.com/ariya/phantomjs.git && \
    cd phantomjs && \
    ./build.py

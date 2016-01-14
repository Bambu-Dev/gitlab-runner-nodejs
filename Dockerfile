FROM debian:wheezy

MAINTAINER Greg Keys <gkeys@mumbacloud.com>

RUN apt-get update -y && apt-get install --no-install-recommends -y -q curl python build-essential git ca-certificates python-pip git
RUN mkdir /nodejs && curl http://nodejs.org/dist/v5.4.1/node-v5.4.1-linux-x64.tar.gz | tar xvzf - -C /nodejs --strip-components=1

ENV PATH $PATH:/nodejs/bin

RUN pip install awscli awsebcli

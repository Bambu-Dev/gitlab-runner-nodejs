FROM centos:latest

MAINTAINER Greg Keys <gkeys@mumbacloud.com>

ENV PATH $PATH:/nodejs/bin
ENV NODE_VERSION 5.11.1

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
    && yum clean all \
    && rpm --rebuilddb \
    && yum -y install curl python-pip git \
    && mkdir /nodejs \
    && curl http://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz | tar xvzf - -C /nodejs --strip-components=1 \
    && pip install awscli awsebcli

FROM node:5.11.1-wheezy

MAINTAINER Greg Keys <gkeys@mumbacloud.com>

RUN apt-get update -y && \
    apt-get install --no-install-recommends -y -q \
                                                python \
                                                python-pip \
                                                git \
                                                ca-certificates \
    && pip install awscli awsebcli \
    && rm -rf /var/cache/* /tmp/* /usr/share/man /root/.npm /root/.node-gyp /root/.gnupg \
               /usr/lib/node_modules/npm/man /usr/lib/node_modules/npm/doc /usr/lib/node_modules/npm/html

ENV PATH $PATH:/usr/bin/docker

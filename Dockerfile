FROM mhart/alpine-node:5.11.1

MAINTAINER Greg Keys <gkeys@mumbacloud.com>

RUN apk --no-cache add --update \
        python \
        py-pip \
        bash \
        git \
    && pip install awscli awsebcli \
    && rm -rf /var/cache/* /tmp/* /usr/share/man /var/cache/apk/* /root/.npm /root/.node-gyp /root/.gnupg \
               /usr/lib/node_modules/npm/man /usr/lib/node_modules/npm/doc /usr/lib/node_modules/npm/html

ENV PATH $PATH:/usr/bin/docker

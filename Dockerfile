FROM centos:latest

MAINTAINER Greg Keys <gkeys@mumbacloud.com>

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
    && yum clean all \
    && rpm --rebuilddb \
    && yum -y install nodejs npm python-pip git \
    && pip install awscli awsebcli

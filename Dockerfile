FROM centos:latest

MAINTAINER Greg Keys <gkeys@mumbacloud.com>

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum clean all
RUN rpm --rebuilddb

RUN yum -y install nodejs npm python-pip git
RUN pip install awscli awsebcli

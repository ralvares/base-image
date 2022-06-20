FROM registry.access.redhat.com/ubi8

USER root

RUN HOME=/root && \
yum update -y && yum -y clean all --enablerepo='*'

USER 1001

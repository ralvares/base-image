FROM registry.access.redhat.com/ubi8/ubi-minimal

USER root

RUN HOME=/root && \
microdnf install curl wget -y && \
microdnf update -y && microdnf -y clean all --enablerepo='*'

USER 1001

FROM registry.access.redhat.com/ubi9/nodejs-20-minimal:1-26

USER root

RUN dnf update -y && dnf -y clean all --enablerepo='*' && \
    rpm -e --nodeps $(rpm -qa '*rpm*' '*dnf*' '*libsolv*' '*hawkey*' 'yum*' 'curl')

USER 1001

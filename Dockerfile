FROM registry.access.redhat.com/ubi8/ubi@sha256:1f89aefa39dbc96a47ae451d64f200a0013637cdbe048d1b9ef56c99976bb8c0

USER root

#RUN dnf update -y && dnf -y clean all --enablerepo='*' 
RUN dnf update -y && dnf -y clean all --enablerepo='*' && \
rpm -e --nodeps $(rpm -qa '*rpm*' '*dnf*' '*libsolv*' '*hawkey*' 'yum*' 'curl')

USER 1001

FROM registry.access.redhat.com/ubi8/ubi-minimal

USER root

RUN HOME=/root && \
microdnf update -y && microdnf -y clean all --enablerepo='*' && \
rpm -e --nodeps $(rpm -qa '*rpm*' '*dnf*' '*libsolv*' '*hawkey*' 'yum*')

USER 1001

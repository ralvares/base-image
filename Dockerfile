FROM registry.access.redhat.com/ubi8/ubi-minimal

USER root

RUN microdnf update -y && microdnf -y clean all --enablerepo='*' && \
rpm -e --nodeps $(rpm -qa '*rpm*' '*dnf*' '*libsolv*' '*hawkey*' 'yum*' 'curl')

USER 1001

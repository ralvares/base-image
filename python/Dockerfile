FROM registry.access.redhat.com/ubi8/ubi-minimal

USER root

RUN mkdir /app/ && \
    microdnf update -y && microdnf -y clean all --enablerepo='*' && \
    microdnf install python3-pip git -y && \
    rpm -e --nodeps $(rpm -qa '*rpm*' '*dnf*' '*libsolv*' '*hawkey*' 'yum*' 'curl')

COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt

USER 1001

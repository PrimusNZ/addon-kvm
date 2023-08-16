FROM centos:7
ENV container docker

RUN yum clean all \
    && yum update -y \
    && yum install -y qemu-kvm bridge-utils iproute dnsmasq \
    && yum clean all

COPY startvm /usr/local/bin/startvm
RUN chmod u+x /usr/local/bin/startvm

ENTRYPOINT ["/usr/local/bin/startvm"]

LABEL org.opencontainers.image.source https://github.com/PrimusNZ/hassio-addons

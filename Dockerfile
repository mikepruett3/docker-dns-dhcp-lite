FROM lsiobase/xenial
MAINTAINER mikepruett3

RUN \
    apt-get update && \
    apt-get install -y \
        bind \
        isc-dhcp-server  && \
    systemctl enable bind && \
    systemctl enable isc-dhcp-server && \
    systemctl start bind && \
    systemctl start isc-dhcp-server && \

EXPOSE 53/udp 53/tcp 10000/tcp 67/udp 68/udp

VOLUME /data
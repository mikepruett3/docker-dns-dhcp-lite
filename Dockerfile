FROM lsiobase/xenial
MAINTAINER mikepruett3

RUN \
    apt-get update && \
    apt-get install -y \
        bind9 \
        isc-dhcp-server  && \
    systemctl enable bind9 && \
    systemctl enable isc-dhcp-server && \
    systemctl start bind9 && \
    systemctl start isc-dhcp-server && \

EXPOSE 53/udp 53/tcp 10000/tcp 67/udp 68/udp

VOLUME /data
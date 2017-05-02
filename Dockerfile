FROM lsiobase/xenial
MAINTAINER Mike Pruett, mikepruett3

RUN apt-get update
RUN apt-get install -y bind9 isc-dhcp-server

COPY ["entrypoint.sh","/sbin/entrypoint.sh"]
RUN chmod 0755 /sbin/entrypoint.sh

EXPOSE 53/udp 53/tcp 10000/tcp 67/udp 68/udp
VOLUME ["/data"]
# ENTRYPOINT ["/sbin/entrypoint.sh"]
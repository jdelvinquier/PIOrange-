FROM ubuntu:16.04

RUN apt-get update -y && apt-get -y install

WORKDIR /opt
RUN wget ftp://ftp.freeradius.org/pub/radius/freeradius-server-3.0.11.tar.gz
RUN tar -xvf freeradius-server-3.0.9.tar.gz

WORKDIR /freeradius-server-3.0.9
RUN ./configure
RUN checkinstall -y --default

ADD ../clients.conf /usr/local/etc/raddb/clients.conf
ADD ../users /usr/local/etc/raddb/users

EXPOSE 1812/udp
EXPOSE 1813/udp
EXPOSE 18120
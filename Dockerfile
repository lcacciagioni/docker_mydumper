FROM ubuntu:trusty
MAINTAINER Leandro David Cacciagioni <leandro.21.2008@gmail.com>

VOLUME /dumpdir

CMD /dumpbridge

ADD dumpbridge /dumpbridge

RUN apt-get update && apt-get -qqy install mydumper mysql-client && \
  chmod 755 /dumpbridge && \
  apt-get autoremove -qqy && \
  apt-get clean && apt-get autoclean && \
  rm -rf /usr/share/man/?? && rm -rf /usr/share/man/??_*

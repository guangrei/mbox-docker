FROM ubuntu:18.04
MAINTAINER guangrei <grei@tuta.io>

RUN apt-get update -yqq && apt-get install -yqq gcc make libpcap-dev libssl-dev > /dev/null
ADD ./src /opt/mbox
RUN cd /opt/mbox && ./configure && make && make install && cd .. && rm -rf mbox
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
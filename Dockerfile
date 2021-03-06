FROM phusion/baseimage:0.9.18

MAINTAINER Stuart Munro <stuart@munro.co>

# Dependencies
RUN DEBIAN_FRONTEND='noninteractive' \
  apt-get update && \
  apt-get -y --force-yes install bash apt-utils build-essential git software-properties-common \
  libpq-dev g++ make libpcre3 libpcre3-dev libxslt-dev libxml2-dev wget libmysqlclient-dev

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install latest python 2.7.11
ADD ./docker/install_python.sh /install_python.sh
RUN chmod 755 /install_python.sh
RUN /install_python.sh


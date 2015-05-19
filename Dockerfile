FROM phusion/baseimage:0.9.16

MAINTAINER Stuart Munro <stuart@munro.co>

# Dependencies
RUN DEBIAN_FRONTEND='noninteractive' \
  apt-get update && \
  apt-get -y --force-yes install bash apt-utils build-essential git software-properties-common libpq-dev g++ make libpcre3 libpcre3-dev \
  libxslt-dev libxml2-dev wget

RUN apt-get clean

# Install latest python 2.7.9
ADD ./docker/install_python.sh /install_python.sh
RUN chmod 755 /install_python.sh
RUN /install_python.sh


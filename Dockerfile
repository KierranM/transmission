FROM phusion/baseimage:0.9.16
MAINTAINER Kierran McPherson <kierranm@gmail.com>

# use phusion/baseimage init system
CMD ["/sbin/my_init"]

RUN apt-get update && apt-get install -y transmission-daemon

# Create the transmission directory
RUN mkdir /transmission
RUN chmod 1777 /transmission

# Set the transmission home value
ENV TRANSMISSION_HOME /transmission/config

# Expose the transmission port
EXPOSE 9091

VOLUME /transmission/downloads
VOLUME /transmission/watch
VOLUME /transmission/incomplete
VOLUME /transmission/config

# copy across the default settings
ADD Assets/settings.json /tmp/settings.json

# Setup the config for container startup
RUN mkdir /etc/my_init.d
ADD Assets/config.sh /etc/my_init.d/config.sh
RUN chmod a+x /etc/my_init.d/config.sh

# Set up the runit script
RUN mkdir /etc/service/transmission
ADD Assets/transmission.sh /etc/service/transmission/run
RUN chmod a+x /etc/service/transmission/run

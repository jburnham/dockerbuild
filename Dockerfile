FROM ubuntu:14.04
MAINTAINER Justin Burnham <justin@jburnham.net>

# Set the env variables to non-interactive
ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_PRIORITY critical
ENV DEBCONF_NOWARNINGS yes

RUN apt-get update

# Installing the build environment
RUN apt-get install -y build-essential devscripts fakeroot quilt dh-make automake libdistro-info-perl less nano vim-nox ruby-dev git wget python-virtualenv

RUN gem install fpm
WORKDIR /opt/build

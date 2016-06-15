FROM ubuntu:16.04

#Update OS
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

#Install basic build tools
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential

#Install python-iptables specific build dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-all-dev python-all-dbg python-setuptools python3-all-dev python3-all-dbg python3-setuptools debhelper

#Make the working dir
RUN mkdir -p /opt/build

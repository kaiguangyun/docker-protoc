#
# Dockerfile - Centos 7 && protobuf
#

FROM centos:7

MAINTAINER GGguang <kaiguangyun@formail.com>

RUN yum install -y gcc gcc-c++ m4 make autoconf automake libtool axel wget git zip unzip which

RUN git clone https://github.com/google/protobuf

RUN cd protobuf && ./autogen.sh && ./configure && make && make install

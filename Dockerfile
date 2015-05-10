#
# Packer Dockerfile
#
# https://github.com/rosstimson/dockerfiles
#
# AUTHOR:   Ross Timson <ross@rosstimson.com>
# LICENSE:  WTFPL - http://wtfpl.net
#
# Installs Packer (https://packer.io).
#
# Packer:   http://www.packer.io
#

FROM debian:jessie
MAINTAINER Ross Timson <ross@rosstimson.com>

ENV PACKER_VERSION 0.7.5

# Download and install Packer.
RUN mkdir /tmp/packer \
    && cd /tmp/packer \
    && apt-get update && apt-get install -y curl ca-certificates unzip --no-install-recommends && rm -rf /var/lib/apt/lists/* \
    && curl -O -sS -L https://dl.bintray.com/mitchellh/packer/packer_${PACKER_VERSION}_linux_amd64.zip \
    && unzip packer_${PACKER_VERSION}_linux_amd64.zip \
    && apt-get purge -y --auto-remove unzip \
    && mv packer* /usr/local/bin \
    && rm -rf /tmp/packer

# Define default command.
CMD ["packer"]

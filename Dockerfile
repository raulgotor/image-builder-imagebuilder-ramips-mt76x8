
FROM debian:buster

RUN apt-get update -qqq

RUN apt-get install -y curl xz-utils make perl python3 unzip wget gawk python3-distutils
RUN mkdir /tmp/openwrt
RUN cd /tmp/openwrt

WORKDIR /tmp/openwrt/

RUN curl -O https://downloads.openwrt.org/snapshots/targets/ramips/mt76x8/openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64.tar.xz
RUN tar -J -x -f openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64.tar.xz

WORKDIR /tmp/openwrt/openwrt-imagebuilder-ramips-mt76x8.Linux-x86_64

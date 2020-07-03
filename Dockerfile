FROM ubuntu:latest
MAINTAINER Sad Pencil "me@pencil.live"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
  ln -fs /usr/share/zoneinfo/Etc/Utc /etc/localtime && \
  apt-get install -y tzdata && \
  dpkg-reconfigure --frontend noninteractive tzdata && \
  apt-get install -y texlive-full && \
  apt-get autoclean && \
  apt-get clean && \
  rm -rf /var/cache/apt/* && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /usr/share/doc/*
CMD ["/bin/bash"]

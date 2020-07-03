FROM ubuntu:latest
MAINTAINER Sad Pencil "me@pencil.live"
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y texlive-full && apt-get autoclean && apt-get clean && rm -rf /var/cache/apt/*
CMD ["/bin/bash"]

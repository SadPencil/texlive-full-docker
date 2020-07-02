FROM ubuntu:latest
MAINTAINER Sad Pencil "me@pencil.live"
RUN apt-get update && apt-get install -y texlive-full && apt-get clean && sudo apt-get autoclean
CMD ["/bin/bash"]
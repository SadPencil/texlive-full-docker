FROM ubuntu:20.04
MAINTAINER Sad Pencil "me@pencil.live"
RUN apt-get update && apt-get install -y texlive-full && apt-get clean && sudo apt-get autoclean
CMD ["/bin/bash"]
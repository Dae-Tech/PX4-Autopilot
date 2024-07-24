FROM ubuntu:22.04

RUN mkdir -p /usr/local/nvm
ENV NVM_DIR /usr/local/nvm
# IMPORTANT: set the exact version
ENV NODE_VERSION 11

RUN apt-get update
RUN apt-get -y install
RUN apt-get -y install gcc clang clang-tools cmake
RUN apt-get install sudo
RUN apt-get install -y git
RUN apt-get install curl -y
RUN apt-get install gnupg -y
RUN curl -sSL http://get.gazebosim.org | sh
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
RUN . "$NVM_DIR/nvm.sh" && nvm install 11
RUN git clone https://github.com/JeanPaulSB/gzweb
RUN apt install -y libjansson-dev libboost-dev imagemagick libtinyxml-dev mercurial cmake build-essential
RUN cd /gzweb
RUN . /usr/share/gazebo/setup.sh
RUN npm run deploy --- -m
RUN npm start

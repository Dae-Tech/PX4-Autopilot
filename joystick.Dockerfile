FROM ubuntu:jammy

# Update package list and install necessary packages
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Install Python packages
RUN pip3 install Flask flask_socketio flask_cors python-uinput mavsdk

# Install git
RUN apt-get update && apt-get install -y git
# clone repo
RUN git clone https://github.com/jangel017/RemoteJoystick.git

WORKDIR /RemoteJoystick

RUN apt install sudo

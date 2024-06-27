#!/bin/bash

# Update package list
sudo apt-get update

# Install Python, pip, and virtualenv
sudo apt-get install -y python3 python3-pip python3-venv

# Create a virtual environment
sudo python3 -m venv myenv

# Change the permissions of the virtual environment for the current user
sudo chown -R $USER:$USER myenv

# Activate the virtual environment
source myenv/bin/activate

# Install Python packages in the virtual environment
pip install Flask flask_socketio flask_cors python-uinput mavsdk

# Install git
sudo apt-get install -y git

# Clone the repository
git clone https://github.com/jangel017/RemoteJoystick.git

# Change to the cloned repository directory
cd RemoteJoystick

# Install sudo (in case it is not installed)
sudo apt-get install -y sudo

echo "Setup complete."



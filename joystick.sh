#!/bin/bash

# Actualizar la lista de paquetes
sudo apt-get update

# Instalar Python, pip y virtualenv
sudo apt-get install -y python3 python3-pip python3-venv

# Crear un entorno virtual
sudo python3 -m venv myenv

# Cambiar los permisos del entorno virtual para el usuario actual
sudo chown -R $USER:$USER myenv

# Activar el entorno virtual
source myenv/bin/activate

# Instalar paquetes de Python en el entorno virtual
pip install Flask flask_socketio flask_cors python-uinput mavsdk

# Instalar git
sudo apt-get install -y git

# Clonar el repositorio
git clone https://github.com/jangel017/RemoteJoystick.git

# Cambiar al directorio del repositorio clonado
cd RemoteJoystick

# Instalar sudo (por si no está instalado)
sudo apt-get install -y sudo

echo "Setup completo."


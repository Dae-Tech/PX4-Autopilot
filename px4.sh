#!/bin/bash

# enter to directory
cd src/PX4-Autopilot/

# launch simulation without graphical interface
VERBOSE_SIM=1 HEADLESS=1 make px4_sitl gazebo-classic

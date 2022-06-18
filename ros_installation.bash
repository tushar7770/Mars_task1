#!/bin/bash

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'

sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo apt update
echo -e "\nenter no. of installation \n1.) Desktop-Full Install\n2.) Desktop Install\n3.) ROS-Base: (Bare Bones)\n4.) Individual Package "
read package_type
if [$package_type == '1']
sudo apt install ros-melodic-desktop-full
elif [$package_type == '2']
sudo apt install ros-melodic-desktop
elif [$package_type == '3']
sudo apt install ros-melodic-ros-base
elif [$package_type == '4']
sudo apt install ros-melodic-PACKAGE
fi

echo -e "\n1.)ROS environment variables are automatically added to your bash session every time a new shell is launched\n2.) if you just want to change the environment of your current shell\n3.) If you use zsh instead of bash"
read setup
if [$setup == '1']
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
elif [$setup == '2']
source /opt/ros/melodic/setup.bash
elif [$setup == '3']
echo "source /opt/ros/melodic/setup.zsh" >> ~/.zshrc
source ~/.zshrc
fi

sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential

sudo apt install python-rosdep

sudo rosdep init
rosdep update

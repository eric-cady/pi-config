#!/bin/bash
clear
echo
echo "Hi from GitHub"
echo
echo "This Script will walk through some of the basic and tedious first steps with a new Raspberry Pi."
echo "Let's start by doing some system software updates..."
sleep 10


#let's get the current version of Raspbian
current_ver=`uname -a`
echo
echo "Before we start, it looks like you're running:"
echo "  $current_ver"
echo
echo "  Installing updates, this may take some time..."
echo
sudo apt-get update -y
echo
sudo apt-get dist-upgrade -y
echo
echo "After the updates you're running:"
current_ver=`uname -a`
echo "  $current_ver"

echo
echo "Now that updates are done, let's install some software:"
echo "  Starting with Vim..."
echo
sudo apt-get install vim -y
echo
echo "  Now installing NGiNX..."
echo
sudo apt-get install nginx -y
echo
echo "  Now installing sSMTP..."
echo
sudo apt-get install ssmtp -y
echo
echo "  Now installing Telnet..."
echo
sudo apt-get install telnet -y
echo
echo "  Now installing Links..."
echo
sudo apt-get install links -y
echo
echo "  Now installing Git..."
echo
sudo apt-get install git -y
echo

#ask if a Raspberry Pi Camera is installed
read -p "Are you using a Raspberry Pi Camera? (y/n): " camera_answer
			if [ "$camera_answer" == "yes" -o "$camera_answer" == "y" ]; then

				echo
        echo "

			elif [ "$camera_answer" == "no" -o "$camera_answer" == "n" ]; then

				
        
      else
      
        echo "invalid response - please choose yes or no - exiting."
			
      fi

#now to do the basic stuff, we can use the raspberry pi config script 
echo "Now you'll be sent to the Raspberry Pi Software Configuration Tool to finish setup..."
sudo raspi-config


#!/bin/sh

# vmware_osx-reschange.sh is a script to fix the problem of wrong screen resolutions due to vmware workstation and mac osx.
# I added the choice between a one time manual script or one to use at startup. Feel free to copy the one you need and happy virtualisation.
# Please visit github.com/JannisKirschner for more.


#Manual Script

echo "Please Enter X-Size: "
read x

echo "Please Enter Y-Size: "
read y

cd '/Library/Application Support/VMware Tools'
./vmware-resolutionSet "$x" "$y"

echo "Resolution Change Successful!"
echo "Please press [Enter] to continue: "
read enter


#-----------------------

#Startup Script
#replace x/y with the resolution of your choice and use launchd or automator with login items to run it automatically at startup.

cd '/Library/Application Support/VMware Tools'
./vmware-resolutionSet x y

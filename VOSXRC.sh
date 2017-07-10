#!/bin/sh

# VOSXRC
# VMware OSX resolution change
# github.com/JannisKirschner

echo "Please Enter X-Size: "
read x

echo "Please Enter Y-Size: "
read y

cd '/Library/Application Support/VMware Tools'
./vmware-resolutionSet "$x" "$y"

echo "Resolution Change Successful!"
echo "Please press [Enter] to continue: "
read enter

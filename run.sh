#!/bin/bash

#needs to be ran from desktop, gzdoom requires some video output

#requires doomserver directory at home
cd ~/doomserver
#directory structure should be 
# /doomserver
#  |
#  |-iwads
#  |
#  |-wads

echo "Which IWAD?"
echo "Available:"
echo ""
iwads=`ls -R ./iwads`
for entry in $iwads
do
  echo "$entry"
done

read iwadc
iwadc='./iwads/'$iwadc
echo "Which PWAD?"
echo "Available:"
echo ""
pwads=`ls -R ./wads`
for pentry in $pwads
do
  echo "$pentry"
done

read pwadc
pwadc='./wads/'$pwadc
echo $iwadc
echo $pwadc

echo ""
echo ""
echo "Players?"
read players
gzdoom +set fullscreen false -iwad $iwadc -file $pwadc -host $players -height 480 -warp01

~
~

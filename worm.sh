#!/bin/bash

tall=1

navn=0
cp "$0" ~/.config/autostart/
while [ $tall -gt 0 ]; do 
	mkdir /home/elev/Desktop/$navn
	navn=$(($navn + 1))
	tall=5 #dette gjøre sånn at loopen justerer seg hvis det trengs
done 

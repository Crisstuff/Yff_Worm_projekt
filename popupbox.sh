#!/bin/bash

# kjekker om wmctrl & xdotool er instalert
sudo apt-get install wmctrl xdotool


# Define the popup message

popupboxnummer=$((RANDOM % 100 + 1))

# Launch the zenity popup in the background
zenity --info --title="Velkommen" --text="Dette er popupbox nummer $popupboxnummer" &

# Give it a moment to open
sleep 0.5

# Get the window ID of the popup (uses the window title to identify)
win_id=$(wmctrl -l | grep "Velkommen" | awk '{print $1}')

# Get the screen resolution
screen_width=$(xdpyinfo | awk '/dimensions/{print $2}' | cut -d 'x' -f 1)
screen_height=$(xdpyinfo | awk '/dimensions/{print $2}' | cut -d 'x' -f 2)

# Define the popup window size (you may need to adjust these values)
popup_width=200
popup_height=100

# Generate random coordinates
random_x=$((RANDOM % (screen_width - popup_width)))
random_y=$((RANDOM % (screen_height - popup_height)))

# Move the popup window to the random position
xdotool windowmove "$win_id" "$random_x" "$random_y"


# gammel Zenity Popup box script prototype
# zenity --info --title="velkommen" --text="Dette er popupbox nummer $popupboxnummer"

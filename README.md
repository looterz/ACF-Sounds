# ACF Sound Extension Project
A new experimental sound system for [ACF](https://github.com/nrlulz/ACF), which adds unique sounds that play at 4-5 different distances from other players.

The main goal of this project is to make it so you can hear weapon fire accurate to the weapons caliber at any range. 
Sounds are played based on the players position relative to the firing weapons position, and played in 3D so that the human ear can accurately judge the direction the fire is coming from.

# Usage
Using the ACF Sound Replacer tool, browse to the acf_new/weapons folder and pick any weapon calibers "close.wav" sound, the addon takes care of the rest.

# Sound Ranges
* Indoors - Under 3000 meters and inside of a building, small calibers only.
* Close - Under 3000 meters.
* Near - 3000 to 8000 meters.
* Medium - 8000 to 13000 meters, 0.4 second delay.
* Far - Over 13000 meters, 0.6 second delay.

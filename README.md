# Robotic Hoover

## background information

● Room dimensions as ​X and Y coordinates​, identifying the top right corner of the room rectangle. This room is divided up in a grid based on these dimensions; a room that has dimensions X: 5 and Y: 5 has 5 columns and 5 rows, so 25 possible hoover positions. The bottom left corner is the point of origin for our coordinate system, so as the room contains all coordinates its bottom left corner is defined by X: 0 and Y: 0.
● Locations of patches of dirt, also defined by X and Y coordinates identifying the bottom left corner of those grid positions - dirts identified as 1 in the grid.
● An initial hoover position (X and Y coordinates like patches of dirt)
● Driving instructions (as ​cardinal directions​) where e.g. N and E mean "go north" and "go east" respectively).

Placing the hoover on a patch of dirt ("hoovering") removes the patch of dirt so that patch is then clean for the remainder of the program run. The hoover is always on - there is no need to enable it.
Driving into a wall has no effect (the robot skids in place).

## Goal
The goal of the program is to take the room dimensions, the locations of the dirt patches, the hoover location and the driving instructions as input and to then output the following:
● The final hoover position (X, Y)
● The number of patches of dirt the robot cleaned up


## How to run/test

ruby main.rb ~/Desktop/test/input1.txt


## Tech used

Ruby

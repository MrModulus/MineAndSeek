# SETUP
#  Purpose:
#    Runs the setup function for the selected map and TP's all markers to its Survivor spawnpoint.
#  End Effect:
#    Checks which map is selected and executes the setup for it accordingly.
#  Called by:
#    game/state/start
#  Additional notes:
#    This could've been done directly in the start function, but to keep all map-related stuff local to the 
#    map directory, they've been placed into their own function.
#    After map setup, its important to tp the markers to the survivor spawn, so that they aren't killed by
#    the bounds checks.

#CLEAR PREVIOUS MAP + ENTITIES
function mas:game/map/blank

#MAP-SPECIFIC SETUP
execute if score #map mas.ids = #MANSION mas.enums run function mas:game/map/mansion
execute if score #map mas.ids = #FARM mas.enums run function mas:game/map/farm

#PROTECT MAP ENTITIES FROM DELETION
tag @e[x=-1504,y=17,z=-83,dx=97,dy=49,dz=97,type=!minecraft:player] add mas.entity

#PROTECT MAP ENTITIES FROM PLAYER INTERACTION
execute as @e[x=-1504,y=17,z=-83,dx=97,dy=49,dz=97,type=!minecraft:player] run data merge entity @s {Invulnerable:1b,Fixed:1b,Marker:1b}

#TP MARKERS INTO BOUNDS
tp @e[type=minecraft:marker,tag=mas.entity] @e[type=minecraft:marker,tag=mas.survivor_spawn,limit=1]
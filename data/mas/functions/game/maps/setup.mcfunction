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
#    Lastly, the schedules use 45s here to align with the start of the round, so this should be updated
#    if the time for Hunter spawn is updated too. Ideally we find a way to do music/effect stuff
#    all from the round start function using predicates. TODO (low): Return to this.

#CLEAR PREVIOUS MAP + ENTITIES
function mas:game/maps/blank/setup

#MAP-SPECIFIC SETUP
execute if score #map mas.ids = #SWAN mas.constants run function mas:game/maps/swan/setup
execute if score #map mas.ids = #LODGE mas.constants run function mas:game/maps/lodge/setup
execute if score #map mas.ids = #MANSION mas.constants run function mas:game/maps/mansion/setup
execute if score #map mas.ids = #FARM mas.constants run function mas:game/maps/farm/setup

#MAP SCHEDULES
schedule function mas:game/maps/music 45s
schedule function mas:game/maps/effects 45s

#PROTECT MAP ENTITIES FROM DELETION
tag @e[predicate=mas:locations/map_bounds,type=!minecraft:player] add mas.entity

#PROTECT MAP ENTITIES FROM PLAYER INTERACTION
execute as @e[predicate=mas:locations/map_bounds,type=!minecraft:player] run data merge entity @s {Invulnerable:1b,Fixed:1b,Marker:1b}

#TP MARKERS INTO BOUNDS
tp @e[type=minecraft:marker,tag=mas.idle_marker] @e[type=minecraft:marker,tag=mas.survivor_spawn,limit=1]
tp @e[type=minecraft:marker,tag=mas.bounds_marker] @e[type=minecraft:marker,tag=mas.survivor_spawn,limit=1]
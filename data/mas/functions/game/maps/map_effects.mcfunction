# MAP EFFECTS
#  This function will choose which effects to use based on the map.
#  This should only ever be called by the round_start function.

#EFFECT PICKING
#these could probably be grouped using ranges but then we cant use the enums. todo: figure out a smarter way of doing this, in case of multiple effects per map
execute if score #map mas.ids = #MANSION mas.enums run function mas:game/maps/effects/lightning/lightning
execute if score #map mas.ids = #FARM mas.enums run function mas:game/maps/effects/lightning/lightning
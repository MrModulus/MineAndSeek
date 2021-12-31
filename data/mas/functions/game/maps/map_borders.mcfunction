# MAP BORDERS
#  This function will choose which boundaries to use based on the map.
#  This should only ever be called by the round_start function.

#BORDER PICKING
execute if score #map mas.ids = #MANSION mas.enums run function mas:game/maps/borders/mansion
execute if score #map mas.ids = #FARM mas.enums run function mas:game/maps/borders/farm
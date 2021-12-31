# MAP MUSIC
#  This function will choose which music to play based on the map.
#  This should only ever be called by the round_start function.

#MUSIC PICKING
execute if score #map mas.ids = #MANSION mas.enums run function mas:game/maps/music/mansion
execute if score #map mas.ids = #FARM mas.enums run function mas:game/maps/music/farm
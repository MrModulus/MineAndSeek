# MAP SETUP
#  This function will choose which map setup function to run.
#  This should only ever be called by the round_start function.

#MAP PICKING
execute if score #map mas.ids = #MANSION mas.enums run function mas:game/maps/setup/mansion
execute if score #map mas.ids = #FARM mas.enums run function mas:game/maps/setup/farm
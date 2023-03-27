# SETUP
#  Purpose:
#    Runs the setup function for the selected map and TP's all markers to its Survivor spawnpoint.
#  End Effect:
#    Checks which map is selected and executes the setup for it accordingly.
#  Called by:
#    game/state/start
#  Additional notes:
#    None

#CLEAR PREVIOUS MAP + ENTITIES
function mas:game/maps/blank/setup

#MAP-SPECIFIC SETUP
execute if score #map mas.ids = #SWAN mas.constants run function mas:game/maps/swan/setup
execute if score #map mas.ids = #LODGE mas.constants run function mas:game/maps/lodge/setup
execute if score #map mas.ids = #MANSION mas.constants run function mas:game/maps/mansion/setup
execute if score #map mas.ids = #FARM mas.constants run function mas:game/maps/farm/setup
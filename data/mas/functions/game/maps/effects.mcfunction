# EFFECTS
#  Purpose:
#    Runs the effect function for the selected map.
#  End Effect:
#    Checks which map is selected and executes the effects for it accordingly.
#  Called by:
#    game/maps/...
#  Additional notes:
#    This could've been done directly in the map-specific functions, but we use a single central file
#    to avoid creating more schedules.

#MAP-SPECIFIC EFFECTS
execute if score #map mas.ids = #SWAN mas.constants run function mas:game/maps/swan/effects
execute if score #map mas.ids = #LODGE mas.constants run function mas:game/maps/lodge/effects
execute if score #map mas.ids = #MANSION mas.constants run function mas:game/maps/mansion/effects
execute if score #map mas.ids = #FARM mas.constants run function mas:game/maps/farm/effects
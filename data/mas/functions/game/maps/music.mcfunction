# MUSIC
#  Purpose:
#    Runs the music function for the selected map.
#  End Effect:
#    Checks which map is selected and executes the music for it accordingly.
#  Called by:
#    game/maps/...
#  Additional notes:
#    This could've been done directly in the map-specific functions, but we use a single central file
#    to avoid creating more schedules.

#MAP-SPECIFIC MUSIC
execute if score #map mas.ids = #SWAN mas.constants run function mas:game/maps/swan/music
execute if score #map mas.ids = #LODGE mas.constants run function mas:game/maps/lodge/music
execute if score #map mas.ids = #MANSION mas.constants run function mas:game/maps/mansion/music
execute if score #map mas.ids = #FARM mas.constants run function mas:game/maps/farm/music
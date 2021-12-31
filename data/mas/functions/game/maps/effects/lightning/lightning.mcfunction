# EFFECTS: LIGHTNING
#  This function will control the lightning effect for all maps.
#  This should only ever be called by the map_effects function and itself.

#SUMMON LIGHTNING
execute at @e[tag=mas.lightning,limit=1] run summon lightning_bolt ~ ~ ~

#SCHEDULE NEXT STRIKE
execute if score #game_state mas.counters = #IN_GAME mas.enums run schedule function mas:game/maps/effects/lightning 30s

#RANDOMIZE LOCATION
execute if score #map mas.ids = #MANSION mas.enums run function mas:game/maps/effects/mansion/lightning
execute if score #map mas.ids = #FARM mas.enums run function mas:game/maps/effects/farm/lightning
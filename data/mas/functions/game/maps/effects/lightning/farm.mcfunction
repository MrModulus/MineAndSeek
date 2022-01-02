# LIGHTNING: FARM
#  This function will control the lightning effect for the Farm map.
#  This should only ever be called by the lightning function and itself.

#RANDOMIZE MARKER
spreadplayers 23 91 0 32 false @e[type=minecraft:armor_stand,tag=mas.lightning,limit=1]
#todo: check if this is better using execute unless entity with predicate in selector
execute as @e[type=minecraft:armor_stand,tag=mas.lightning,limit=1] unless predicate mas:maps/in_farm_range run schedule function mas:game/maps/effects/lightning/farm 1t
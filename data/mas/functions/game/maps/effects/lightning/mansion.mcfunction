# LIGHTNING: MANSION
#  This function will control the lightning effect for the Mansion map.
#  This should only ever be called by the lightning function and itself.

#RANDOMIZE MARKER
spreadplayers 23 91 0 36 false @e[type=minecraft:armor_stand,tag=mas.lightning,limit=1]
execute as @e[type=minecraft:armor_stand,tag=mas.lightning,limit=1] unless predicate mas:maps/in_mansion_range run schedule function mas:game/maps/effects/lightning/mansion 1t
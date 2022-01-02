# BORDERS: FARM
#  This function continously checks the borders for the Farm map.
#  It should only ever be called by the map setup functions or itself.

#DISALLOW PLAYER ENTRY
tp @a[tag=!mas.player,predicate=mas:maps/in_farm_range] 1.5 63 35.5 180 0

#DISALLOW PLAYER EXIT
execute at @a[tag=mas.player] as @e[type=minecraft:armor_stand,tag=mas.border_marker,scores={mas.id=0..}] if score @p mas.id = @s mas.id run function mas:game/maps/borders/markers/farm

#DISALLOW ENTITY ENTRY
#dropped items, naturally spawned, etc
kill @e[type=!minecraft:player,tag=!mas.entity,predicate=mas:maps/in_farm_range]

#DISALLOW ENTITY EXIT
kill @e[type=!minecraft:player,tag=mas.entity,predicate=!mas:maps/in_farm_range]

#LOOP
#its redundant to check IN_GAME here and schedule per-tick when we already have tick_seconds, but its equally redundant 
# to check map id in tick_seconds when we already checked it during map setup. at least this way map stuff stays self-contained.
execute if score #game_state mas.counters = #IN_GAME mas.enums run schedule function mas:game/maps/borders/farm 1s
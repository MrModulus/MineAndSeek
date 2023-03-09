# BOUND EFFECTS
#  Purpose:
#    Executes the bound effects required before and during the game.
#  End Effect:
#    TPs or kills all foreign entities within the map bounds.
#  Called by:
#    scripts/main
#  Additional notes:
#    None

#TP FOREIGN PLAYERS
tp @a[predicate=mas:locations/map_bounds,tag=!mas.player] -399.5 35 803.5 0 0

#KILL FOREIGN ENTITIES
kill @e[predicate=mas:locations/map_bounds,type=!minecraft:player,tag=!mas.entity]

#KILL ESCAPED MAS ENTITIES
execute as @e[type=!minecraft:player,tag=mas.entity] unless entity @s[predicate=mas:locations/map_bounds] run kill @s
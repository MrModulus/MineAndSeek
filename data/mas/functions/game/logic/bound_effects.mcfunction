# BOUND EFFECTS
#  Purpose:
#    Executes the bound effects required before and during the game.
#  End Effect:
#    TPs or kills all foreign entities within the map bounds.
#  Called by:
#    scripts/main, game/logic/tick_second
#  Additional notes:
#    None.

#TP FOREIGN PLAYERS
tp @a[tag=!mas.player,predicate=mas:maps/in_bounds] 1.5 63 35.5 180 0

#KILL FOREIGN ENTITIES
kill @e[type=!minecraft:player,tag=!mas.entity,predicate=mas:maps/in_bounds]

#KILL ESCAPED MAS ENTITIES
kill @e[type=!minecraft:player,tag=mas.entity,predicate=!mas:maps/in_bounds]
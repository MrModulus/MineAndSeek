# BOUND EFFECTS
#  Purpose:
#    Executes the bound effects required before and during the game.
#  End Effect:
#    TPs or kills all foreign entities within the map bounds.
#  Called by:
#    scripts/main
#  Additional notes:
#    None.

#TP FOREIGN PLAYERS
tp @a[x=-1504,y=17,z=-83,dx=97,dy=97,dz=97,tag=!mas.player] -399.5 35 803.5 0 0

#KILL FOREIGN ENTITIES
kill @e[x=-1504,y=17,z=-83,dx=97,dy=97,dz=97,type=!minecraft:player,tag=!mas.entity]

#KILL ESCAPED MAS ENTITIES
execute as @e[type=!minecraft:player,tag=mas.entity] unless entity @s[x=-1504,y=17,z=-83,dx=97,dy=97,dz=97] run kill @s
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
tp @a[x=0,y=0,z=0,dx=95,dy=95,dz=95,tag=!mas.player] 1.5 63 35.5 180 0

#KILL FOREIGN ENTITIES
kill @e[x=0,y=0,z=0,dx=95,dy=95,dz=95,type=!minecraft:player,tag=!mas.entity]

#KILL ESCAPED MAS ENTITIES
execute as @e[type=!minecraft:player,tag=mas.entity] unless entity @s[x=0,y=0,z=0,dx=95,dy=95,dz=95] run kill @s
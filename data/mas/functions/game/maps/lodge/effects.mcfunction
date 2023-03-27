# LODGE: EFFECTS
#  Purpose:
#    Summons lightning periodically, at random positions around the map, throughout the round.
#  End Effect:
#    Spawns a lightning marker if it doesn't exist already, summons lightning at its location, then
#    scrambles the marker location and loops every 30 seconds.
#  Called by:
#    game/map/farm or game/map/mansion, then itself
#  Additional notes:
#    We could summon the marker at round start to avoid calling the spawn check repeatedly, but it's 
#    probably better for effects to be self-contained.

#SPAWN MARKER IF NOT SPAWNED
execute unless entity @e[type=minecraft:marker,tag=mas.lightning,limit=1] at @e[type=minecraft:marker,tag=mas.hunter_spawn,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["mas.lightning","mas.entity"]}

#SUMMON LIGHTNING
execute at @e[type=minecraft:marker,tag=mas.lightning,limit=1] run summon lightning_bolt ~ ~ ~ {Tags:["mas.entity"]}

#RANDOMIZE LOCATION
spreadplayers -1455.5 -34.5 0 47 false @e[type=minecraft:marker,tag=mas.lightning,limit=1]

#LOOP EVERY 30 SECONDS
schedule function mas:game/maps/effects 30s
# SETUP: MANSION
#  This function executes the commands needed to initialize the Mansion map.
#  It should only ever be called by the round setup function.

#CLEAR ENTITIES
#todo: check if execute .. if predicate ... is actually better than @e[predicate=...]
execute as @e if predicate mas:maps/in_mansion_range

#LOAD MAP
data merge block -13 31 57 {mode:"LOAD"}
setblock -13 30 57 minecraft:redstone_block destroy
data merge block -13 31 89 {mode:"LOAD"}
setblock -13 30 87 minecraft:redstone_block destroy
data merge block -13 31 121 {mode:"LOAD"}
setblock -13 30 121 minecraft:redstone_block destroy
data merge block 19 31 57 {mode:"LOAD"}
setblock 19 30 57 minecraft:redstone_block destroy
data merge block 19 31 89 {mode:"LOAD"}
setblock 19 30 89 minecraft:redstone_block destroy
data merge block 19 31 121 {mode:"LOAD"}
setblock 19 30 121 minecraft:redstone_block destroy
data merge block 51 31 57 {mode:"LOAD"}
setblock 51 30 57 minecraft:redstone_block destroy
data merge block 51 31 89 {mode:"LOAD"}
setblock 51 30 89 minecraft:redstone_block destroy
data merge block 51 31 121 {mode:"LOAD"}
setblock 51 30 121 minecraft:redstone_block destroy

#SET SPAWNPOINTS
summon armor_stand 21 35 59 {Marker:1b,Invisible:1b,Tags:["mas.survivor_spawn","mas.entity"],Rotation:[0F,0F]}
summon armor_stand 21 35 89 {Marker:1b,Invisible:1b,Tags:["mas.hunter_spawn","mas.entity"],Rotation:[180F,0F]}

#MAP SCHEDULES
#music
schedule function mas:game/maps/music/farm 45s
#border
schedule function mas:game/maps/borders/farm 45s
#effects
schedule function mas:game/maps/effects/lightning 45s
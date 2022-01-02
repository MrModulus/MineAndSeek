# SETUP: FARM
#  This function executes the commands needed to initialize the Farm map.
#  It should only ever be called by the round setup function.

#CLEAR ENTITIES
execute as @e if predicate mas:maps/in_farm_range

#LOAD MAP
data merge block -61 26 60 {mode:"LOAD"}
setblock -61 25 60 minecraft:redstone_block destroy
data merge block -61 26 92 {mode:"LOAD"}
setblock -61 25 92 minecraft:redstone_block destroy
data merge block -29 26 60 {mode:"LOAD"}
setblock -29 25 60 minecraft:redstone_block destroy
data merge block -29 26 92 {mode:"LOAD"}
setblock -29 25 92 minecraft:redstone_block destroy

#SET SPAWNPOINTS
summon armor_stand -44 37 68 {Marker:1b,Invisible:1b,Tags:["mas.survivor_spawn","mas.entity"],Rotation:[0F,0F]}
summon armor_stand -55 36 68 {Marker:1b,Invisible:1b,Tags:["mas.hunter_spawn","mas.entity"],Rotation:[180F,0F]}

#MAP SCHEDULES
#music
schedule function mas:game/maps/music/farm 45s
#border
schedule function mas:game/maps/borders/farm 45s
#effects
schedule function mas:game/maps/effects/lightning 45s
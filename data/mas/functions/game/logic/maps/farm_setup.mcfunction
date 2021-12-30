#CLEAR ENTITIES
kill @e[x=-61,y=26,z=60,dx=38,dy=24,dz=63]

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
summon armor_stand -44 34 68 {Marker:1b,Invisible:1b,Tags:["mas.survivor_spawn"],Rotation:[0F,0F]}
summon armor_stand -55 33 68 {Marker:1b,Invisible:1b,Tags:["mas.hunter_spawn"],Rotation:[0F,-180F]}

#PLAY MUSIC
scoreboard players set #MUSIC_RESET mas.enums 2700
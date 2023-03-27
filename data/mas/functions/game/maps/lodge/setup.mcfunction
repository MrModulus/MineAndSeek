# LODGE: SETUP
#  Purpose:
#    Handles all of the setup needed for the Lodge map at round start.
#  End Effect:
#    Map is loaded via structure blocks, team spawnpoints are set, and music/effects/bounds are scheduled
#    to kick in as the round starts.
#  Called by:
#    game/maps/setup
#  Additional notes:
#    None

#LOAD MAP
place template mas:lodge1 -1455 19 -82
place template mas:lodge2 -1455 19 -34
place template mas:lodge3 -1503 19 -82
place template mas:lodge4 -1503 19 -34
fill -1503 35 -36 -1503 35 -33 minecraft:air replace minecraft:structure_block
fill -1503 34 -36 -1503 35 -33 minecraft:grass_block replace minecraft:dirt

#SET SPAWNPOINTS // TODO (high): Fix these later, once LODGE is finished
summon minecraft:marker -1452.5 35.5 -9.5 {Tags:["mas.survivor_spawn","mas.entity"],Rotation:[180F,0F]}
summon minecraft:marker -1452.5 60 -9.5 {Tags:["mas.spectator_spawn","mas.entity"],Rotation:[180F,0F]}
summon minecraft:marker -1459.5 35.5 -67.5 {Tags:["mas.hunter_spawn","mas.entity"],Rotation:[0F,0F]}
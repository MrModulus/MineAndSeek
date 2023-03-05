# SETUP: MANSION
#  Purpose:
#    Handles all of the setup needed for the Mansion map at round start.
#  End Effect:
#    Map is loaded via structure blocks, team spawnpoints are set, and music/effects/bounds are scheduled
#    to kick in as the round starts.
#  Called by:
#    game//setup
#  Additional notes:
#    The map loading method MUST use 'destroy' because replacing a block which is already the same block type doesn't work,
#    e.g. replacing a redstone block with a redstone block will fail.
#    Also, the Y axis may need adjusting for maps with underground sections.
#    Lastly, the schedules use 45s here to align with the start of the round, so this should be updated
#    if the time for Hunter spawn is updated too. Ideally we find a way to do music/effect stuff
#    all from the round start function using predicates. TODO (low): Return to this.

#LOAD MAP
place template mas:mansion1 -1455 19 -82
place template mas:mansion2 -1455 19 -34
place template mas:mansion3 -1503 19 -82
place template mas:mansion4 -1503 19 -34
fill -1503 35 -36 -1503 35 -33 minecraft:air replace minecraft:structure_block
fill -1503 34 -36 -1503 35 -33 minecraft:grass_block replace minecraft:dirt

#SET SPAWNPOINTS
summon minecraft:marker -1459.5 35.5 -64.5 {Tags:["mas.survivor_spawn","mas.entity"],Rotation:[0F,0F]}
summon minecraft:marker -1459.5 60 -64.5 {Tags:["mas.spectator_spawn","mas.entity"],Rotation:[0F,0F]}
summon minecraft:marker -1459.5 35.5 -25.5 {Tags:["mas.hunter_spawn","mas.entity"],Rotation:[180F,0F]}

#MAP SCHEDULES
schedule function mas:game/map/music/mansion 45s
schedule function mas:game/map/effects/lightning 45s
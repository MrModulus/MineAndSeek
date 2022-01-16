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
setblock 0 -17 0 structure_block[mode=load]{name:"mas:mansion1",posX:0,posY:1,posZ:0,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} destroy
setblock 0 -18 0 minecraft:redstone_block destroy
setblock 0 -17 48 structure_block[mode=load]{name:"mas:mansion2",posX:0,posY:1,posZ:0,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} destroy
setblock 0 -18 48 minecraft:redstone_block destroy
setblock 48 -17 0 structure_block[mode=load]{name:"mas:mansion3",posX:0,posY:1,posZ:0,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} destroy
setblock 48 -18 0 minecraft:redstone_block destroy
setblock 48 -17 48 structure_block[mode=load]{name:"mas:mansion4",posX:0,posY:1,posZ:0,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} destroy
setblock 48 -18 48 minecraft:redstone_block destroy

#SET SPAWNPOINTS
summon minecraft:marker 21 35 59 {Tags:["mas.survivor_spawn","mas.entity"],Rotation:[0F,0F]}
summon minecraft:marker 21 35 89 {Tags:["mas.hunter_spawn","mas.entity"],Rotation:[180F,0F]}

#MAP SCHEDULES
schedule function mas:game/map/music/mansion 45s
schedule function mas:game/map/effects/lightning 45s
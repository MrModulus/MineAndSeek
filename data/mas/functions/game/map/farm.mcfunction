# SETUP: FARM
#  Purpose:
#    Handles all of the setup needed for the Farm map at round start.
#  End Effect:
#    Map is loaded via structure blocks, team spawnpoints are set, and music/effects/bounds are scheduled
#    to kick in as the round starts.
#  Called by:
#    game/map/setup
#  Additional notes:
#    The map loading method MUST use 'destroy' because replacing a block which is already the same block type doesn't work,
#    e.g. replacing a redstone block with a redstone block will fail.
#    Also, the Y axis may need adjusting for maps with underground sections.
#    Lastly, the schedules use 45s here to align with the start of the round, so this should be updated
#    if the time for Hunter spawn is updated too. Ideally we find a way to do music/effect stuff
#    all from the round start function using predicates. TODO (low): Return to this.

#LOAD MAP
setblock -1503 35 -36 structure_block[mode=load]{name:"mas:farm1",posX:48,posY:-16,posZ:-46,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} destroy
setblock -1503 35 -35 structure_block[mode=load]{name:"mas:farm2",posX:48,posY:-16,posZ:1,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} destroy
setblock -1503 35 -34 structure_block[mode=load]{name:"mas:farm3",posX:0,posY:-16,posZ:-48,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} destroy
setblock -1503 35 -33 structure_block[mode=load]{name:"mas:farm4",posX:0,posY:-16,posZ:-1,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"LOAD",ignoreEntities:0b} destroy
setblock -1503 34 -36 minecraft:redstone_block destroy
setblock -1503 34 -35 minecraft:redstone_block destroy
setblock -1503 35 -34 minecraft:redstone_block destroy
setblock -1503 35 -33 minecraft:redstone_block destroy
setblock -1503 35 -36 air destroy
setblock -1503 35 -35 air destroy
setblock -1503 35 -34 air destroy
setblock -1503 35 -33 air destroy

#SET SPAWNPOINTS // TODO (high): Fix these later, once farm is finished
summon minecraft:marker -1459.5 35.5 -64.5 {Tags:["mas.survivor_spawn","mas.entity"],Rotation:[0F,0F]}
summon minecraft:marker -1459.5 35.5 -25.5 {Tags:["mas.hunter_spawn","mas.entity"],Rotation:[180F,0F]}

#MAP SCHEDULES
schedule function mas:game/map/music/farm 45s
schedule function mas:game/map/effects/lightning 45s
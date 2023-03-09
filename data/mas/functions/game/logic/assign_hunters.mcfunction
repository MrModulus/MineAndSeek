# ASSIGN HUNTERS
#  Purpose:
#    Handles team assignment to ensure 1 random Hunter for every 3 Survivors.
#  End Effect:
#    Players are sorted into Hunters and Survivors.
#  Called by:
#    players/start
#  Additional notes:
#    None

#ASSIGN HUNTER
team join mas.hunter @a[tag=mas.player,team=!mas.hunter,sort=random,limit=1]

#COUNT TEAM SIZES
scoreboard players set #survivors mas.counters 0
execute as @a[team=mas.survivor] run scoreboard players add #survivors mas.counters 1
scoreboard players set #hunters mas.counters 0
execute as @a[team=mas.hunter] run scoreboard players add #hunters mas.counters 1

#CALCULATE RATIO
scoreboard players operation #ratio mas.counters = #survivors mas.counters
scoreboard players operation #ratio mas.counters /= #hunters mas.counters

#DETERMINE HOW TO BRANCH
execute if score #ratio mas.counters > #SURVIVORS_PER_HUNTER mas.enums run function mas:game/logic/assign_hunters
execute if score #ratio mas.counters <= #SURVIVORS_PER_HUNTER mas.enums run function mas:game/state/start
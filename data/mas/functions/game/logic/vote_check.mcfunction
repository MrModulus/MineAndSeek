# VOTE CHECK
#  Purpose:
#    Handles map voting prior to game start.
#  End Effect:
#    Selects the desired map then auto-starts the game.
#  Called by:
#    scripts/main
#  Additional notes:
#    We need to use entities to count the votes to make finding the max and randomly tie breaking possible.

#LEAVE GAME IF NOT VOTING
execute as @a[tag=mas.player,predicate=!mas:locations/voting] run function mas:players/leave

#COUNT SWAN VOTES
execute unless entity @e[type=marker,tag=mas.vote_swan,limit=1] run summon minecraft:marker -399.5 35 803.5 {Tags:["mas.vote_swan","mas.vote","mas.entity"],Rotation:[0F,0F]}
scoreboard players set @e[type=marker,tag=mas.vote_swan,limit=1] mas.counters 0
execute as @a[tag=mas.player,predicate=mas:locations/vote_swan] run scoreboard players add @e[type=marker,tag=mas.vote_swan,limit=1] mas.counters 1
scoreboard players operation Swan mas.votes = @e[type=marker,tag=mas.vote_swan,limit=1] mas.counters

#COUNT LODGE VOTES
execute unless entity @e[type=marker,tag=mas.vote_lodge,limit=1] run summon minecraft:marker -399.5 35 803.5 {Tags:["mas.vote_lodge","mas.vote","mas.entity"],Rotation:[0F,0F]}
scoreboard players set @e[type=marker,tag=mas.vote_lodge,limit=1] mas.counters 0
execute as @a[tag=mas.player,predicate=mas:locations/vote_lodge] run scoreboard players add @e[type=marker,tag=mas.vote_lodge,limit=1] mas.counters 1
scoreboard players operation Lodge mas.votes = @e[type=marker,tag=mas.vote_lodge,limit=1] mas.counters

#COUNT MANSION VOTES
execute unless entity @e[type=marker,tag=mas.vote_mansion,limit=1] run summon minecraft:marker -399.5 35 803.5 {Tags:["mas.vote_mansion","mas.vote","mas.entity"],Rotation:[0F,0F]}
scoreboard players set @e[type=marker,tag=mas.vote_mansion,limit=1] mas.counters 0
execute as @a[tag=mas.player,predicate=mas:locations/vote_mansion] run scoreboard players add @e[type=marker,tag=mas.vote_mansion,limit=1] mas.counters 1
scoreboard players operation Mansion mas.votes = @e[type=marker,tag=mas.vote_mansion,limit=1] mas.counters

#COUNT FARM VOTES
execute unless entity @e[type=marker,tag=mas.vote_farm,limit=1] run summon minecraft:marker -399.5 35 803.5 {Tags:["mas.vote_farm","mas.vote","mas.entity"],Rotation:[0F,0F]}
scoreboard players set @e[type=marker,tag=mas.vote_farm,limit=1] mas.counters 0
execute as @a[tag=mas.player,predicate=mas:locations/vote_farm] run scoreboard players add @e[type=marker,tag=mas.vote_farm,limit=1] mas.counters 1
scoreboard players operation Farm mas.votes = @e[type=marker,tag=mas.vote_farm,limit=1] mas.counters

#CALCULATE VOTING SECONDS
execute if score #players mas.counters < #MIN_PLAYERS mas.constants if score #voting_timer mas.counters matches 0.. run scoreboard players set #voting_timer mas.counters -1
execute if score #players mas.counters >= #MIN_PLAYERS mas.constants if score #voting_timer mas.counters matches -1 run scoreboard players set #voting_timer mas.counters 400
scoreboard players operation #voting_timer_sec mas.counters = #voting_timer mas.counters
scoreboard players operation #voting_timer_sec mas.counters /= #TICKS_PER_SECOND mas.constants
scoreboard players add #voting_timer_sec mas.counters 1

#SHOW ACTION BAR
execute if score #players mas.counters < #MIN_PLAYERS mas.constants run title @a[team=mas.lobby] actionbar ["",{"score":{"name":"#players","objective":"mas.counters"},"bold":true},{"text":"/","bold":true},{"score":{"name":"#MIN_PLAYERS","objective":"mas.constants"},"bold":true},{"text":" PLAYERS NEEDED TO INITIATE VOTING"}]
execute if score #players mas.counters >= #MIN_PLAYERS mas.constants run title @a[team=mas.lobby] actionbar ["",{"text":"VOTING ENDS IN "},{"score":{"name":"#voting_timer_sec","objective":"mas.counters"},"bold":true},{"text":" SECONDS"}]

#CHECK VOTING TIMER
execute if score #players mas.counters >= #MIN_PLAYERS mas.constants unless score #voting_timer mas.counters matches 0 run scoreboard players remove #voting_timer mas.counters 1
execute if score #voting_timer mas.counters matches 0 run function mas:players/start
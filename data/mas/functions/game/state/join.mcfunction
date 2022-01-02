# JOIN
#  This function will let a player join the game if they haven't already.
#  It should only ever be called by the user-facing join function.

#JOINED PRE_GAME
#might later change this to allow joining during locker phase. todo: make a decision
#execute if score #game_state mas.counters = #PRE_GAME mas.enums run XYZ

#JOINED DURING GAME
execute unless score #game_state mas.counters = #POST_GAME mas.enums run kill @s

#SET ID
scoreboard players operation @s mas.ids = #players mas.counters

#SPAWN PLAYER MARKERS
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["mas.idle_marker","mas.unclaimed","mas.entity"]}
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["mas.border_marker","mas.unclaimed","mas.entity"]}
#could make this into a single function to avoid two checks
scoreboard players operation @e[type=minecraft:armor_stand,tag=mas.entity,tag=mas.unclaimed,limit=2] mas.ids = @s mas.ids
tag @e[type=minecraft:armor_stand,tag=mas.entity,tag=mas.unclaimed,limit=2] remove mas.unclaimed

#ADD PLAYER TAG
tag @s add mas.player

#MESSAGE
tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" You have joined the game.","color":"green"}]
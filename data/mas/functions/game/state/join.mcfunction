# JOIN
#  This function will let a player join the game if they haven't already.
#  It should only ever be called by the user-facing join function.

#JOINED PRE_GAME
#might later change this to allow joining during locker phase. todo: make a decision
#execute if score #game_state mas.counters = #PRE_GAME mas.enums run XYZ

#JOINED DURING GAME
execute if score #game_state mas.counters <= #IN_GAME mas.enums run kill @s

#ADD PLAYER TAG
tag @s add mas.player

#MESSAGE
tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" You have joined the game.","color":"green"}]
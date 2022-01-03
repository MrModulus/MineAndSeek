# START
#  This function will let a player attempt to start the game.
#  It can be called by any player at any time.

#ATTEMPT TO START
#replace this with a predicate later
execute if score #game_state mas.counters = #POST_GAME mas.enums unless score #players mas.counters matches 2.. run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Not enough players to start the game.","color":"red"}]
execute unless score #game_state mas.counters = #POST_GAME mas.enums run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" The game is already in progress.","color":"red"}]
execute if score #game_state mas.counters = #POST_GAME mas.enums if score #players mas.counters matches 2.. run function mas:game/state/start
# END
#  This function will let a player attempt to end the game.
#  It can be called by any player at any time.

#ATTEMPT TO END
execute unless score #game_state mas.counters = #POST_GAME mas.enums run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" There is no game in progress.","color":"red"}]
execute if score #game_state mas.counters = #POST_GAME mas.enums run function mas:game/state/end
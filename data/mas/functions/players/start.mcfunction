# START
#  Purpose:
#    Allows the player to attempt to start the game.
#  End Effect:
#    Starts the game if it's not in progress and there are the correct number of players, 
#    sends an error message otherwise.
#  Called by:
#    player
#  Additional notes:
#    The player number check should be replaced with alternatives predicates later.
#    TODO (medium): Return to this.

#ATTEMPT TO START
execute if score #game_state mas.counters = #NO_GAME mas.enums unless score #players mas.counters matches 2.. run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Not enough players to start the game.","color":"red"}]
execute unless score #game_state mas.counters = #NO_GAME mas.enums run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" The game is already in progress.","color":"red"}]
execute if score #game_state mas.counters = #NO_GAME mas.enums if score #players mas.counters matches 2.. run function mas:game/state/start
# START
#  Purpose:
#    Allows the player to attempt to start the game.
#  End Effect:
#    Starts the game if it's not in progress and there are the correct number of players, sends an error
#    message otherwise.
#  Called by:
#    player
#  Additional notes:
#    None

#ATTEMPT TO START
execute unless score #game_state mas.counters = #NO_GAME mas.constants run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" The game is already in progress.","color":"red"}]
execute if score #game_state mas.counters = #NO_GAME mas.constants if score #players mas.counters < #MIN_PLAYERS mas.constants run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" At least ","color":"red"},{"score":{"name":"#MIN_PLAYERS","objective":"mas.constants"},"bold":true,"color":"dark_red"},{"text":" players are needed to start the game.","color":"red"},{"text":" players.","color":"red"}]
execute if score #game_state mas.counters = #NO_GAME mas.constants if score #players mas.counters > #MAX_PLAYERS mas.constants run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" No more than ","color":"red"},{"score":{"name":"#MAX_PLAYERS","objective":"mas.constants"},"bold":true,"color":"dark_red"},{"text":" players can play this game.","color":"red"},{"text":" players.","color":"red"}]
execute if score #game_state mas.counters = #NO_GAME mas.constants if score #players mas.counters >= #MIN_PLAYERS mas.constants if score #players mas.counters <= #MAX_PLAYERS mas.constants run function mas:game/logic/assign_teams
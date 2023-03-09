# JOIN
#  Purpose:
#    Allows the player to attempt to join the game.
#  End Effect:
#    Joins the player to the game if they haven't already, sends an error message if they have.
#  Called by:
#    player
#  Additional notes:
#    None

#ATTEMPT TO JOIN
execute if entity @s[tag=mas.player] run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" You have already joined the game.","color":"red"}]
execute if score #players mas.counters >= #MAX_PLAYERS mas.enums run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Game is already at maximum capacity.","color":"red"}]
execute if score #players mas.counters >= #MAX_PLAYERS mas.enums if entity @s[predicate=mas:locations/lobby_and_voting] run tp @s -399.5 35 803.5 0 0
execute unless entity @s[tag=mas.player] unless score #players mas.counters >= #MAX_PLAYERS mas.enums run function mas:game/state/join
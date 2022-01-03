# LEAVE
#  Purpose:
#    Allows the player to attempt to leave the game.
#  End Effect:
#    Leaves the player from the game if they're in one, sends an error message if they aren't.
#  Called by:
#    player
#  Additional notes:
#    None

#ATTEMPT TO LEAVE
execute unless entity @s[tag=mas.player] run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" You are not in the game.","color":"red"}]
execute if entity @s[tag=mas.player] run function mas:game/state/leave
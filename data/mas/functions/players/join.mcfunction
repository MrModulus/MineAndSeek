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
execute unless entity @s[tag=mas.player] run function mas:game/state/join
# JOIN
#  This function will let a player attempt to join the game.
#  It can be called by any player at any time.

#ATTEMPT TO JOIN
execute if entity @s[tag=mas.player] run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" You have already joined the game.","color":"red"}]
execute unless entity @s[tag=mas.player] run function mas:game/state/join
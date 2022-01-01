# LEAVE
#  This function will let a player attempt to leave the game.
#  It can be called by any player at any time.

#ATTEMPT TO LEAVE
execute unless entity @s[tag=mas.player] run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" You are not in the game.","color":"red"}]
execute if entity @s[tag=mas.player] run function mas:game/state/leave
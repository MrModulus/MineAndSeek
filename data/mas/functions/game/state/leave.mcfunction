# LEAVE
#  This function will let a player leave the game if they're in one.
#  It should only ever be called by the user-facing leave function.

tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" You have left the game."}]
tag @s remove mas.player
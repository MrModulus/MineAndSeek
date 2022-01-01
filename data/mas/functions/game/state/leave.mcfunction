# LEAVE
#  This function will let a player leave the game if they're in one.
#  It should only ever be called by the user-facing leave function.

tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" You have left the game."}]
tag @s remove mas.player

#If leaving mid-game, TP back to spawn and reset gamemode
execute at @e[tag=deathswap.spawn,limit=1] if entity @s[gamemode=spectator] unless score timer deathswap.vars matches -2 run gamemode survival
execute at @e[tag=deathswap.spawn,limit=1] unless score timer deathswap.vars matches -2 run tp @e[tag=deathswap.spawn,limit=1]
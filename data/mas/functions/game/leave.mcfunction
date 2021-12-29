execute unless entity @s[tag=deathswap.player] run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" You are not in a game.","color":"red"}]
execute if entity @s[tag=deathswap.player] run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" You have left the game."}]
tag @s remove deathswap.player

#If leaving mid-game, TP back to spawn and reset gamemode
execute at @e[tag=deathswap.spawn,limit=1] if entity @s[gamemode=spectator] unless score timer deathswap.vars matches -2 run gamemode survival
execute at @e[tag=deathswap.spawn,limit=1] unless score timer deathswap.vars matches -2 run tp @e[tag=deathswap.spawn,limit=1] 
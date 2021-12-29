execute if entity @s[tag=deathswap.player] run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" You have already joined the game.","color":"red"}]
execute unless entity @s[tag=deathswap.player] run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" You have joined the game.","color":"green"}]
tag @s add deathswap.player

#If joining mid-game, set player as spectator by default
execute unless score timer deathswap.vars matches -2 run scoreboard players set @s deathswap.deaths 100
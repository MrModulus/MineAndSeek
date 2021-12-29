#Set the lobby spawnpoint if a game is not in progress
execute if score timer deathswap.vars matches -2 run tp @e[tag=deathswap.spawn,limit=1] ~ ~ ~
execute if score timer deathswap.vars matches -2 run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Lobby spawnpoint set to your position successfully.","color":"green"}]

#Otherwise, display an error message
execute unless score timer deathswap.vars matches -2 run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Can't set the lobby spawnpoint while a game is in progress.","color":"red"}]
#todo: implement this


#Start the game if there are enough players
execute if score players deathswap.vars > ZERO deathswap.vars unless score players deathswap.vars matches 1 run function deathswap:logic/begin

#Otherwise, display an error message
execute if score players deathswap.vars matches 0 run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Not enough players to start a game.","color":"red"}]
execute if score players deathswap.vars matches 1 run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Not enough players to start a game.","color":"red"}]
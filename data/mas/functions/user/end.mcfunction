#todo: implement this


#Display an error message if no game in progress
execute if score timer deathswap.vars matches -2 run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" No game in progress.","color":"red"}]

#Otherwise, end the game
execute unless score timer deathswap.vars matches -2 run tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" The game has been ended prematurely by an admin."}]
execute unless score timer deathswap.vars matches -2 run function deathswap:logic/end
#Decrement the round timer
scoreboard players remove timer deathswap.vars 1

#Update the hotbar text to reflect the minutes remaining until the next swap
execute if score timer deathswap.vars >= ZERO deathswap.vars unless score timer deathswap.vars >= ONE deathswap.vars run title @a actionbar ["",{"text":"Less than 1 minute remaining!","bold":true,"italic":false,"color":"red"}]
execute if score timer deathswap.vars >= ONE deathswap.vars unless score timer deathswap.vars >= TWO deathswap.vars run title @a actionbar ["",{"text":"Less than 2 minutes remaining!","bold":false,"italic":false,"color":"red"}]
execute if score timer deathswap.vars >= TWO deathswap.vars unless score timer deathswap.vars >= THREE deathswap.vars run title @a actionbar ["",{"text":"Less than 3 minutes remaining!","bold":false,"italic":false,"color":"gold"}]
execute if score timer deathswap.vars >= THREE deathswap.vars unless score timer deathswap.vars >= FOUR deathswap.vars run title @a actionbar ["",{"text":"Less than 4 minutes remaining!","bold":false,"italic":false,"color":"yellow"}]
execute if score timer deathswap.vars >= FOUR deathswap.vars run title @a actionbar ["",{"text":"Less than 5 minutes remaining!","bold":false,"italic":false,"color":"white"}]

#Final 10 seconds till swap
execute if score timer deathswap.vars matches 200 run tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Swapping in 10...","bold":true,"color":"red"}]
execute if score timer deathswap.vars matches 180 run tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" 9...","bold":true,"color":"red"}]
execute if score timer deathswap.vars matches 160 run tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" 8...","bold":true,"color":"red"}]
execute if score timer deathswap.vars matches 140 run tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" 7...","bold":true,"color":"red"}]
execute if score timer deathswap.vars matches 120 run tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" 6...","bold":true,"color":"red"}]
execute if score timer deathswap.vars matches 100 run tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" 5...","bold":true,"color":"red"}]
execute if score timer deathswap.vars matches 80 run tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" 4...","bold":true,"color":"red"}]
execute if score timer deathswap.vars matches 60 run tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" 3...","bold":true,"color":"red"}]
execute if score timer deathswap.vars matches 40 run tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" 2...","bold":true,"color":"red"}]
execute if score timer deathswap.vars matches 20 run tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" 1...","bold":true,"color":"red"}]
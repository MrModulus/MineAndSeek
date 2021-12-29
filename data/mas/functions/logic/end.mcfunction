#Set the round timer to -2 so neither swap nor timer functions tick
scoreboard players set timer deathswap.vars -2

#Display the winner (whoever is still survival mode)
tellraw @a[tag=deathswap.player] ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" "},{"selector":"@p[tag=deathswap.player,gamemode=survival]","color":"gold"},{"text":" is the winner!"}]

#Clear scoreboard health display
scoreboard objectives setdisplay list

#Reset player state for all players
execute as @a[tag=deathswap.player] run function deathswap:logic/cleanse

#TP all players to spawn
tp @a[tag=deathswap.player] @e[tag=deathswap.spawn,limit=1] 

#Run the cleanup script
function deathswap:logic/cleanup
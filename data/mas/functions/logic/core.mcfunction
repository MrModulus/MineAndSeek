#Display spectator info to players newly killed
execute as @a[tag=deathswap.player,gamemode=survival,scores={deathswap.deaths=1..}] run function deathswap:logic/died

#Trap any living players in survival mode
gamemode survival @a[tag=deathswap.player,scores={deathswap.deaths=0}]

#Trap any dead players in spectator mode
gamemode spectator @a[tag=deathswap.player,scores={deathswap.deaths=1..}]

#Update swapped count (player and swapped)
scoreboard players set swapped deathswap.vars 0
execute as @a[tag=deathswap.teleported] run scoreboard players add swapped deathswap.vars 1

#Swap the players if they need to be swapped
execute if score timer deathswap.vars matches -1 run function deathswap:logic/swap

#End game if only one player remaining
execute if score players deathswap.vars matches 1 run function deathswap:logic/end
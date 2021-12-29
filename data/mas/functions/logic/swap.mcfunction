#Swap a pair of players which havent been swapped yet
execute unless score swapped deathswap.vars = players deathswap.vars run function deathswap:logic/iterate

#Reset the timer once swapping is done and remove all 'teleported' tags
execute if score swapped deathswap.vars = players deathswap.vars run scoreboard players set timer deathswap.vars 6000
execute if score swapped deathswap.vars = players deathswap.vars run tag @a[tag=deathswap.teleported] remove deathswap.teleported
#Reset death counter
scoreboard players set @s deathswap.deaths 0

#Initialise health display
effect give @s minecraft:instant_health 1 100 true
effect give @s minecraft:instant_damage 1 0 true

#Reset player state
function deathswap:logic/cleanse
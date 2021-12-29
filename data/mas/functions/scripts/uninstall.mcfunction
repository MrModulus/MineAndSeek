#Display the uninstallation message
execute if score init mas.vars matches 1 run tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"Mine and Seek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Cleared all Mine and Seek data.","color":"yellow"}]

#Uninstall the necessary scoreboards
scoreboard objectives remove mas.vars
#scoreboard objectives remove deathswap.deaths
#scoreboard objectives remove deathswap.health

#Delete the spawnpoint armorstand
#kill @e[tag=deathswap.spawn]

#Remove all deathswap tags
#tag @a[tag=deathswap.player] remove deathswap.player

#Run the cleanup script
function mas:game/cleanup
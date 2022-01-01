# DEATH
#  This function tags newly dead players as spectators, tp's them, shows them a message, and resets their deaths.
#  It should only ever be called from the from the tick_second function.

#ADD SPECTATOR TAG
tag @s add mas.spectator

#TP ABOVE SURVIVOR SPAWN
execute at @e[type=minecraft:armor_stand,tag=mas.survivor_spawn,limit=1] run tp @s ~ ~30 ~ ~ 45

#SHOW SPECTATOR MESSAGE
title @s title ["",{"text":"SPECTATING","bold":true,"italic":true,"color":"white"}]

#DISMISS IDLING
#todo: delete idle marker here
scoreboard players reset @s mas.counters

#RESET DEATHS
scoreboard players reset @s mas.death
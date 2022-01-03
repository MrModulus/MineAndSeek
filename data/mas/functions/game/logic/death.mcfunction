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
#technically we dont need to delete idle marker for dead players cuz they get ignored (due to spectator tag), but its less entities to match ids against
execute at @s as @e[type=minecraft:armor_stand,tag=mas.idle_marker] if score @s mas.ids = @p mas.ids run kill @s
scoreboard players reset @s mas.counters

#RESET DEATHS/HEALTH
scoreboard players reset @s mas.death
scoreboard players reset @s mas.health

#LEAVE TEAM
#need to team leave in death function, cant just exclude spectators from counting functions cuz not all spectators are dead
team leave @s
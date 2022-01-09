# DEATH
#  Purpose:
#    Handles the case where a Survivor has been killed.
#  End Effect:
#    Plays the death effects, turns the Survivor into a spectator, joins them to the team for spectators, and resets
#    their death/health scores.
#  Called by:
#    game/logic/tick_second
#  Additional notes:
#    Technically we don't need to delete idle marker for dead players since they get ignored (due to spectator tag), but its less entities
#    to match ids against. We don't kill the bounds marker so that spectators don't fly out of bounds.
#    We also don't need to leave the mas.survivor team as joining a new team automatically leaves any current team. The mas.spectator team 
#    has no real purpose other than to color the names of dead players, to differentiate them from regular players.

#DEATH EFFECTS
execute at @s run function mas:game/logic/death_effects
execute at @a[team=mas.hunter] run playsound minecraft:entity.ravager.celebrate master @a[tag=mas.player] ~ ~1 ~ 0.2 1.3

#ADD SPECTATOR TAG
tag @s add mas.spectator

#TP ABOVE SURVIVOR SPAWN
execute at @e[type=minecraft:marker,tag=mas.survivor_spawn,limit=1] run tp @s ~ ~30 ~ ~ 45

#SHOW SPECTATOR MESSAGE
title @s title ["",{"text":"SPECTATING","bold":true,"italic":true,"color":"white"}]

#DISMISS IDLING
execute at @s as @e[type=minecraft:marker,tag=mas.idle_marker] if score @s mas.ids = @p mas.ids run kill @s
scoreboard players reset @s mas.counters

#RESET DEATHS/HEALTH
scoreboard players reset @s mas.death
scoreboard players reset @s mas.health

#JOIN SPECTATOR TEAM
team join mas.spectator
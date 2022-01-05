# TICK SECOND
#  Purpose:
#    Executes round-specific functionality that can be run per second instead of per tick.
#  End Effect:
#    Checks for deaths, idling, team player counts (for win conditions), and forces gamemodes.
#  Called by:
#    game/state/round_start
#  Additional notes:
#    Loop code MUST be above the win checks so that the schedule can be cleared correctly.

#LOOP EVERY SECOND
schedule function mas:game/logic/tick_second 1s

#DEATH CHECK
execute as @a[scores={mas.death=1..}] run function mas:game/logic/death

#IDLE CHECK
execute at @a[team=mas.survivor,tag=!mas.spectator] as @e[type=minecraft:armor_stand,tag=mas.idle_marker,scores={mas.id=0..}] if score @p mas.id = @s mas.id run function mas:game/logic/idle_check
#25s idle, give warning - could make this a function to avoid two checks, but eh
title @a[team=mas.survivor,scores={mas.counters=25}] title ["",{"text":"Warning","bold":false,"italic":false,"color":"white"}]
title @a[team=mas.survivor,scores={mas.counters=25}] subtitle ["",{"text":"You will be revealed soon unless you move!","bold":false,"italic":false,"color":"white"}]
#30s idle, give effect and actionbar notice - could make this a function to avoid two checks, but eh
effect give @a[team=mas.survivor,scores={mas.counters=30..}] minecraft:glowing 1 0 true
title @a[team=mas.survivor,scores={mas.counters=30..}] actionbar ["",{"text":"YOU ARE VISIBLE - Move to stay hidden!","bold":false,"italic":false,"color":"white"}]

#SURVIVOR COUNT
scoreboard players set #survivors mas.counters 0
execute as @a[team=mas.survivor] run scoreboard players add #survivors mas.counters 1
execute if score #survivors mas.counters matches 0 run function mas:game/logic/win_hunters

#HUNTER COUNT
scoreboard players set #hunters mas.counters 0
execute as @a[team=mas.hunter] run scoreboard players add #hunters mas.counters 1
execute if score #hunters mas.counters matches 0 run function mas:game/logic/win_survivors

#FORCE GAMEMODES
#we treat spectator as a tag, not a team, because some spells use it
gamemode spectator @a[tag=mas.player,tag=mas.spectator]
gamemode adventure @a[tag=mas.player,tag=!mas.spectator]
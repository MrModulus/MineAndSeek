# TICK SECOND
#  This function is called every second ONLY while a game is in progress (past the locker phase).

#DEATH CHECK
execute as @a[scores={mas.death=1..}] run function mas:game/logic/death

#IDLE CHECK
#technically the tag check isnt needed since we delete spectator markers, but it's more efficient
execute at @a[team=mas.survivor,tag=!mas.spectator] as @e[type=minecraft:armor_stand,scores={mas.id=0..}] if score @p mas.id = @s mas.id run function mas:game/logic/idle_check
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

#REMOVE DROPPED ITEMS
kill @e[type=minecraft:item,tag=mas.entity]

#REMOVE GROUNDED ARROWS
kill @e[type=minecraft:arrow,tag=mas.entity,nbt={inGround:1b}]

#LOOP
schedule function mas:game/logic/tick_second 1s

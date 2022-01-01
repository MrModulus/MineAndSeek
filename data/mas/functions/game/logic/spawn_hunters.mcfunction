# SPAWN HUNTERS
#  This function spawns the Hunters, broadcasts a message accordingly, and triggers the round start.
#  It should only ever be called from the schedule command in spawn_survivors.

#TP TO HUNTER SPAWN
tp @a[team=mas.hunter] @e[type=minecraft:armor_stand,tag=mas.hunter_spawn,limit=1]

#DISPLAY TEXT
title @a title ["",{"text":"HUNTERS RELEASED","bold":true,"italic":false,"color":"dark_red"}]
title @a[team=mas.survivor] subtitle ["",{"text":"We smell your fear...","bold":true,"italic":false,"color":"red"}]
title @a[team=mas.hunter] subtitle ["",{"text":"Bleed them dry!","bold":true,"italic":false,"color":"red"}]

#TRIGGER ROUND START
function mas:game/logic/round_start
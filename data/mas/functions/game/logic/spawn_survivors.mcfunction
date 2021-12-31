# SPAWN SURVIVORS
#  This function spawns the Survivors, broadcasts a message accordingly, and sets up the next schedule.
#  It should only ever be called from the schedule command in round_setup.

#TP TO SURVIVOR SPAWN
tp @a[team=mas.survivor] @e[tag=mas.survivor_spawn,limit=1]

#DISPLAY TEXT
title @a title ["",{"text":"SURVIVORS ESCAPED","bold":true,"italic":false,"color":"dark_blue"}]
title @a[team=mas.survivor] subtitle ["",{"text":"Run for your lives!","bold":true,"italic":false,"color":"blue"}]
title @a[team=mas.hunter] subtitle ["",{"text":"Hunt them down!","bold":true,"italic":false,"color":"blue"}]

#SCHEDULE HUNTER SPAWN
schedule function mas:game/logic/spawn_hunters 15s
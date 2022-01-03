# ROUND SETUP
#  This function will setup the teams, scoreboards, and players as needed for the round to start.
#  It should only ever be triggered by the start function.

#UPDATE GAME STATE
scoreboard players operation #game_state mas.counters = #PRE_GAME mas.enums

#SETDISPLAY FOR HEALTH
scoreboard objectives setdisplay list mas.health

#PLAYER SETUP
execute if score #players mas.counters <= #ONE_HUNTER_LIMIT mas.enums run team join mas.hunter @a[tag=mas.player,sort=random,limit=1]
execute if score #players mas.counters > #ONE_HUNTER_LIMIT mas.enums run team join mas.hunter @a[tag=mas.player,sort=random,limit=2]
team join mas.survivor @a[tag=mas.player,team=!mas.hunter]
execute as @a[tag=mas.player] run function mas:game/logic/cleanse

#MAP SETUP
execute if score #map mas.ids = #MANSION mas.enums run function mas:game/maps/mansion
execute if score #map mas.ids = #FARM mas.enums run function mas:game/maps/farm

#INIT LOCKER PHASE
#todo: split these into team_init functions?
tp @a[team=mas.survivor] 1 43 34 -90 0
title @a[team=mas.survivor] title ["",{"text":"Survivor","bold":true,"italic":false,"color":"dark_blue"}]
title @a[team=mas.survivor] subtitle ["",{"text":"You have 30s to pick a class","bold":true,"italic":false,"color":"blue"}]
tp @a[team=mas.hunter] 1 53 34 -90 0
title @a[team=mas.hunter] title ["",{"text":"Hunter","bold":true,"italic":false,"color":"dark_red"}]
title @a[team=mas.hunter] subtitle ["",{"text":"You have 45s to pick a class","bold":true,"italic":false,"color":"red"}]

#SCHEDULE SURVIVOR SPAWN
schedule function mas:game/logic/spawn_survivors 30s
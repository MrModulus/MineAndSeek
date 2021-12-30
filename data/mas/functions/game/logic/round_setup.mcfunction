# ROUND SETUP
#  This function will setup the teams, scoreboards, and players as needed for the round to start.
#  As such, this should only be called AFTER cleanup has already been executed.
#  Players will be spawned in their respective lockers by the end of the function.

#TEAM CREATION
team add mas.survivor
team modify mas.survivor color dark_blue
team modify mas.survivor friendlyFire false
team modify mas.survivor nametagVisibility hideForOtherTeams
team modify mas.survivor seeFriendlyInvisibles true
team add mas.hunter
team modify mas.hunter color dark_red
team modify mas.hunter friendlyFire false
team modify mas.hunter nametagVisibility hideForOtherTeams
team modify mas.hunter seeFriendlyInvisibles true

#SCOREBOARD SETUP
scoreboard objectives add mas.death deathCount
scoreboard objectives add mas.health health
scoreboard players set #round_timer mas.counters 0
scoreboard players set #music_timer mas.counters 0
scoreboard players set #light_timer mas.counters 0
scoreboard players set #survivors mas.counters 0
#setdisplay MUST precede player setup, to update correctly
scoreboard objectives setdisplay list mas.health

#PLAYER SETUP
execute if score #players mas.counters <= #ONE_HUNTER_LIMIT mas.enums run team join mas.hunter @a[tag=mas.player,sort=random,limit=1]
execute if score #players mas.counters > #ONE_HUNTER_LIMIT mas.enums run team join mas.hunter @a[tag=mas.player,sort=random,limit=2]
team join mas.survivor @a[tag=mas.player,team=!mas.hunter]

#INIT LOCKER PHASE
tp @a[team=mas.survivor] 1 43 34 -90 0
title @a[team=mas.survivor] title ["",{"text":"Survivor","bold":true,"italic":false,"color":"dark_blue"}]
title @a[team=mas.survivor] subtitle ["",{"text":"You have 30s to pick a class","bold":true,"italic":false,"color":"blue"}]
tp @a[team=mas.hunter] 1 53 34 -90 0
title @a[team=mas.hunter] title ["",{"text":"Hunter","bold":true,"italic":false,"color":"dark_red"}]
title @a[team=mas.hunter] subtitle ["",{"text":"You have 45s to pick a class","bold":true,"italic":false,"color":"red"}]
# START
#  Purpose:
#    Initiates the locker phase of the game, in which players choose their classes.
#  End Effect:
#    Updates the game state, assigns the teams, triggers the setup function corresponding to the chosen map, 
#    TP's the players to the lockers, shows them messages, inits the pregame music and xp timers, then schedules 
#    the function for spawning the Survivors into the map.
#  Called by:
#    game/logic/assign_hunters
#  Additional notes:
#    The TP's and messages could be split into two team_init functions to avoid using the same selector
#    several times, which may be more efficient. Same goes for the selector checks in player setup.
#    TODO (medium): Return to this.

#PLAYER SETUP
execute as @a[tag=mas.player] run function mas:game/logic/cleanse
scoreboard players reset @a[tag=mas.player] mas.death

#MAP SETUP
scoreboard players operation #max_votes mas.counters > @e[type=marker,tag=mas.vote] mas.counters
execute as @e[type=marker,tag=mas.vote,sort=random] run say hi
execute as @e[type=marker,tag=mas.vote,sort=random] if score @s mas.counters = #max_votes mas.counters run function mas:game/map/map_select
function mas:game/map/setup

#INIT LOCKER PHASE
tp @a[team=mas.survivor] -471.5 35 793.5 90 0
title @a[team=mas.survivor] title ["",{"text":"Survivor","bold":true,"italic":false,"color":"dark_blue"}]
title @a[team=mas.survivor] subtitle ["",{"text":"You have 30s to pick a class","bold":true,"italic":false,"color":"blue"}]
tp @a[team=mas.hunter] -471.5 35 811.5 90 0
title @a[team=mas.hunter] title ["",{"text":"Hunter","bold":true,"italic":false,"color":"dark_red"}]
title @a[team=mas.hunter] subtitle ["",{"text":"You have 45s to pick a class","bold":true,"italic":false,"color":"red"}]

#PLAY LOCKER MUSIC
stopsound @a[tag=mas.player]
playsound music_disc.stal master @a[tag=mas.player] ~ 1000 ~ 100 0.8

#LOCKER TIMER INIT
xp set @a[team=mas.survivor] 30 levels
xp set @a[team=mas.hunter] 45 levels
schedule function mas:game/logic/xp_timer 1s
title @a[tag=mas.player,tag=!mas.spectator] actionbar "SECONDS TILL SPAWN:"

#UPDATE GAME STATE
scoreboard players operation #game_state mas.counters = #LOCKER mas.enums

#SCHEDULE SURVIVOR SPAWN
schedule function mas:game/logic/spawn_survivors 30s

#HIDE VOTE DISPLAY
scoreboard objectives setdisplay sidebar.team.white
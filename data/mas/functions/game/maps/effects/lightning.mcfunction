# EFFECTS: LIGHTNING
#  This function will control the lightning effect for all maps.
#  This should only ever be called by the map setup functions and itself.

#SPAWN MARKER IF NOT SPAWNED
#could summon in map setup to avoid calling this repeatedly, but i want effects to be self-contained
execute at @e[type=minecraft:armor_stand,tag=mas.hunter_spawn,limit=1] unless entity @e[type=minecraft:armor_stand,tag=mas.lightning,limit=1] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["mas.lightning","mas.entity"]}

#SUMMON LIGHTNING
execute at @e[type=minecraft:armor_stand,tag=mas.lightning,limit=1] run summon lightning_bolt ~ ~ ~ {Tags:["mas.entity"]}

#SCHEDULE NEXT STRIKE
execute if score #game_state mas.counters = #IN_GAME mas.enums run schedule function mas:game/maps/effects/lightning 30s

#RANDOMIZE LOCATION
execute if score #map mas.ids = #MANSION mas.enums run function mas:game/maps/effects/mansion/lightning
execute if score #map mas.ids = #FARM mas.enums run function mas:game/maps/effects/farm/lightning
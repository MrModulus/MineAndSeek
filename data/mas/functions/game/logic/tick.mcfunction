# TICK
#  Purpose:
#    Executes round-specific functionality that MUST be ran per tick.
#  End Effect:
#    Enforces game bounds, markers, and gamemodes. Additionally checks for deaths and win conditions.
#  Called by:
#    scripts/main
#  Additional notes:
#    Need to check death tickwise for death effects and spectator tp to work properly.
#    We check for !mas.hunter instead of mas.survivor so that people who join mid-game are 
#    turned into spectators. We also force gamemodes tickwise.

#MARKER CHECK
execute as @e[type=minecraft:marker,tag=mas.entity,scores={mas.ids=0..}] run function mas:game/logic/marker_check

#BOUND EFFECTS
function mas:game/logic/bound_effects

#IDLING EFFECTS
execute as @a[team=mas.survivor,scores={mas.counters=400..},tag=!mas.spectator] run function mas:game/logic/idle_effects

#DEATH CHECK
execute as @a[team=!mas.hunter,scores={mas.death=1..}] at @s run function mas:game/logic/death

#KIT EFFECTS
execute as @a[tag=mas.player,tag=!mas.spectator] run function mas:game/kits/passive_effects
execute as @a[tag=mas.player,tag=!mas.spectator,scores={mas.right_clicked=1},nbt={SelectedItemSlot:1}] run function mas:game/kits/active_effects
execute as @a[tag=mas.player,tag=!mas.spectator,scores={mas.right_clicked=1},nbt={SelectedItemSlot:2}] run function mas:game/kits/ultimate_effects
scoreboard players set @a[tag=mas.player] mas.right_clicked 0

#SURVIVOR COUNT
scoreboard players set #survivors mas.counters 0
execute as @a[team=mas.survivor] run scoreboard players add #survivors mas.counters 1
execute if score #survivors mas.counters matches 0 run function mas:game/logic/win_hunters

#HUNTER COUNT
scoreboard players set #hunters mas.counters 0
execute as @a[team=mas.hunter] run scoreboard players add #hunters mas.counters 1
execute if score #hunters mas.counters matches 0 run function mas:game/logic/win_survivors

#FORCE GAMEMODES
gamemode spectator @a[tag=mas.player,tag=mas.spectator]
gamemode adventure @a[tag=mas.player,tag=!mas.spectator]
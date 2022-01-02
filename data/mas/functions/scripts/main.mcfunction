# MAIN
#  This function is called every tick.

#IN_GAME
execute if score #game_state mas.counters = #IN_GAME mas.enums run function mas:game/logic/tick

#todo: come back to this
#functions that can maybe run every second:
#PLAYER COUNT
#only really needs to trigger during POST_GAME, idk if its more efficient to execute if... or just always do it
scoreboard players set #players mas.counters 0
execute as @a[tag=mas.player] run scoreboard players add #players mas.counters 1
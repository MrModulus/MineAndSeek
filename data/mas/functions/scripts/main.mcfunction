# MAIN
#  This function is called every tick.

#Run game equivalent of main if in-game
execute if score #game_state mas.counters = #IN_GAME mas.enums run function mas:game/logic/tick
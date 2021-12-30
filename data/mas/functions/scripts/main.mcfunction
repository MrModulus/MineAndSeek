# MAIN
#  This function is called every tick.

#Run game equivalent of main if in-game
execute if score #round_timer mas.counters matches 0.. run function mas:game/logic/tick
# ROUND END
#  This function will execute the cleanup process at the end of the round.
#  This should only ever be called by one of the win functions.

#UPDATE GAME STATE
scoreboard players operation #game_state mas.counters = #POST_GAME mas.enums

#TP BACK TO LOBBY
tp @a[tag=mas.player] 1 63 34

#CLEANUP
function mas:scripts/cleanup
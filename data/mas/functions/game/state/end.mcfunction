# ROUND END
#  This function will execute the cleanup process at the end of the round.
#  This should only ever be called by one of the win functions.

#UPDATE GAME STATE
scoreboard players operation #game_state mas.counters = #POST_GAME mas.enums

#CLEAR SCHEDULES
schedule clear mas:game/logic/five_min_msg
schedule clear mas:game/logic/one_min_msg
schedule clear mas:game/logic/win_survivors

#CLEANUP
function mas:scripts/cleanup
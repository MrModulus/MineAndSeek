# ROUND START
#  This function will update the game state, initialize the XP timer, and schedule the round functions.
#  It should only ever be triggered by the spawn_hunters function.

#UPDATE GAME STATE
scoreboard players operation #game_state mas.counters = #IN_GAME mas.enums

#XP INIT
xp set @a[tag=mas.player] 10 levels

#SCHEDULES
schedule function mas:game/logic/tick_second 1s
schedule function mas:game/logic/xp_timer 60s
schedule function mas:game/logic/five_min_msg 300s
# ROUND START
#  This function will execute code that needs to run at the start of the round, such as setting schedules or playing music.
#  It should only ever be triggered by the spawn_hunters function.

#UPDATE GAME STATE
scoreboard players operation #game_state mas.counters = #IN_GAME mas.enums

#MUSIC
function mas:game/maps/map_music

#EFFECTS
function mas:game/maps/map_effects

#XP INIT
xp set @a[tag=mas.player] 10 levels

#SCHEDULES
schedule function mas:game/logic/xp_timer 60s
schedule function mas:game/logic/five_min_msg 300s
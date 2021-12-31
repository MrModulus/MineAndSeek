# XP TIMER
#  This function updates the xp bar every minute until the end of the game.
#  It should only ever be called from spawn_hunters or itself.

#XP UPDATE
xp add @a[tag=mas.player] -1 levels

#SCHEDULE
schedule function mas:game/logic/xp_timer 60s
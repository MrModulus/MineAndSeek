# DC CHECK
#  This function attempts to handle the case where a player leaves mid-game, to prevent item or effect exploitaiton.
#  We also rely on it to clean up at the end of the round, so that the cleanup function doesn't have to.
#  It should only ever be called once, during the init process.

#FORCE PLAYER LEAVE
execute as @a[tag=mas.player] if score #game_state mas.counters = #POST_GAME mas.enums run function mas:game/state/leave
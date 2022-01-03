# DC CHECK
#  Purpose:
#    Handle the case where a player leaves mid-game, to prevent item or effect exploitaiton.
#    Also cleans up at the end of the round, by forcing all players to leave.
#  End Effect:
#    Runs game/state/leave as all players tagged with mas.player.
#  Called by:
#    scripts/init, then itself
#  Additional notes:
#    Must be called during init since world/pack reloads clear schedules.

#FORCE PLAYER LEAVE
execute as @a[tag=mas.player] if score #game_state mas.counters = #POST_GAME mas.enums run function mas:game/state/leave

#LOOP EVERY 2 SECONDS
schedule function mas:game/logic/dc_check 2s
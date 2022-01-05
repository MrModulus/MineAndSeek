# ROUND END
#  Purpose:
#    Handles the cleanup process at the end of the round.
#  End Effect:
#    Updates the game state, cleared the round-specific schedules, reset the scoreboard display, and kills
#    all game entities.
#  Called by:
#    game/logic/win_hunters or game/logic/win_survivors, players/end, scripts/init, scripts/uninstall
#  Additional notes:
#    Ideally we should restore whatever the old scoreboard display was rather than resetting it. TODO (low): Return to this.
#    Also, the schedule clearing for the maps should only be done if there are preset map sizes (finite number of functions).
#    TODO (medium): Return to this.
#    Lastly, none of these schedule clears are guaranteed to execute AFTER the schedule has been created (e.g. created in
#    same tick or had already executed), so we should still manually check game state on the executes.
#    TODO (medium): Confirm this.

#UPDATE GAME STATE
scoreboard players operation #game_state mas.counters = #NO_GAME mas.enums

#FORCE PLAYER LEAVE
execute as @a[tag=mas.player] run function mas:game/state/leave

#CLEAR PREMATURE END SCHEDULES
schedule clear mas:game/logic/spawn_survivors
schedule clear mas:game/logic/spawn_hunters

#CLEAR ROUND SCHEDULES
schedule clear mas:game/logic/xp_timer
schedule clear mas:game/logic/five_min_msg
schedule clear mas:game/logic/one_min_msg
schedule clear mas:game/logic/win_survivors

#CLEAR MAP SCHEDULES
schedule clear mas:game/maps/music/mansion
schedule clear mas:game/maps/music/farm
schedule clear mas:game/maps/borders/mansion
schedule clear mas:game/maps/borders/farm
schedule clear mas:game/maps/effects/lightning

#CLEAR HEALTH DISPLAY
scoreboard objectives setdisplay list

#REMOVE GAME ENTITIES
kill @e[tag=mas.entity]
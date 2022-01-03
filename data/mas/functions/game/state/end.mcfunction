# ROUND END
#  Purpose:
#    Handles the cleanup process at the end of the round.
#  End Effect:
#    Updates the game state, cleared the round-specific schedules, reset the scoreboard display, and kills
#    all game entities.
#  Called by:
#    game/logic/win_hunters or game/logic/win_survivors, players/end, scripts/init, scripts/uninstall
#  Additional notes:
#    Relies implicitly on the dc_check to clean up the players, by forcing them all to leave the game.
#    Ideally we should restore whatever the old scoreboard display was rather than resetting it.
#    TODO (low): Return to this.

#UPDATE GAME STATE
scoreboard players operation #game_state mas.counters = #POST_GAME mas.enums

#CLEAR SCHEDULES
schedule clear mas:game/logic/five_min_msg
schedule clear mas:game/logic/one_min_msg
schedule clear mas:game/logic/win_survivors

#CLEAR HEALTH DISPLAY
scoreboard objectives setdisplay list

#REMOVE GAME ENTITIES
kill @e[tag=mas.entity]
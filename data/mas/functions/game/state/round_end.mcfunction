# ROUND END
#  Purpose:
#    Handles code that should run at round end irrespective of which team won.
#  End Effect:
#    Updates the game state, kills all game entities, tags everyone as spectator, and clears all round-specific
#    schedules. If round end was called by player/init/uninstall, it'll trigger the game end immediately, otherwise it 
#    will wait five seconds.
#  Called by:
#    scripts/init, scripts/uninstall, players/end, game/logic/win_survivors, game/logic/win_hunters
#  Additional notes:
#    This function is called by tick_second, the highest priority scheduled function, so the round schedule clears 
#    should be guaranteed to work (in the case of a natural round end).

#UPDATE GAME STATE
scoreboard players operation #game_state mas.counters = #POST_GAME mas.enums

#REMOVE GAME ENTITIES
kill @e[tag=mas.entity]

#SET ALL TO SPECTATOR
tag @a[tag=mas.player] add mas.spectator

#CLEAR ROUND SCHEDULES
schedule clear mas:game/logic/xp_timer
schedule clear mas:game/logic/five_min_msg
schedule clear mas:game/logic/one_min_msg
schedule clear mas:game/logic/win_survivors

#TRIGGER GAME END
execute if score #end_immediately mas.bools matches 1 run function mas:game/state/end
execute if score #end_immediately mas.bools matches 0 run schedule function mas:game/state/end 5s
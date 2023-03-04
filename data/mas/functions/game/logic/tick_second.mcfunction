# TICK SECOND
#  Purpose:
#    Executes round-specific functionality that can be run per second instead of per tick.
#  End Effect:
#    Checks idling and team player counts (for win conditions).
#  Called by:
#    game/state/round_start
#  Additional notes:
#    Idle effects need to be here since they're timed by the second.
#    Loop code MUST check game state because otherwise the scheduling occurs AFTER the schedule is
#    cleared in round end, even after moving it to the top (maybe the round end code takes more than
#    1 sec?).

#IDLING EFFECTS
execute as @a[team=mas.survivor,scores={mas.counters=25..},tag=!mas.spectator] run function mas:game/logic/idle_effects

#LOOP EVERY SECOND
execute if score #game_state mas.counters = #IN_GAME mas.enums run schedule function mas:game/logic/tick_second 1s
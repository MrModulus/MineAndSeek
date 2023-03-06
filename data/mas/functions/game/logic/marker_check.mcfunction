# MARKER CHECK
#  Purpose:
#    Executes the idle and bounds checks. Used to avoid ID matching twice.
#  End Effect:
#    Player idling and map boundaries will be checked.
#  Called by:
#    game/logic/tick
#  Additional notes:
#    @s represents the marker, @p represents the player.

scoreboard players operation $check_id mas.ids = @s mas.ids
execute if score #game_state mas.counters = #PRE_GAME mas.enums as @a[team=!mas.hunter] if score @s mas.ids = $check_id mas.ids run tag @s add mas.check
execute unless score #game_state mas.counters = #PRE_GAME mas.enums as @a[tag=mas.player] if score @s mas.ids = $check_id mas.ids run tag @s add mas.check

#IDLE/BORDER MARKER CHECKS
execute if entity @s[tag=mas.idle_marker] run function mas:game/logic/idle_check
execute if entity @s[tag=mas.bounds_marker] run function mas:game/logic/bounds_check

tag @a[tag=mas.check,limit=1] remove mas.check

# TODO: better commenting, fix doc comments
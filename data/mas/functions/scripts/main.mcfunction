# MAIN
#  Purpose:
#    Executes every tick, regardless of game state.
#  End Effect:
#    Runs bound effects for the pregame, executes the tickwise functions for in-game commands, clears the health
#    display for non-players, and keeps track of the player count.
#  Called by:
#    minecraft
#  Additional notes:
#    We need to clear the health display to only allow Survivor health to show up. Also, player counting
#    only really needs to happen during NO_GAME, so it may be more efficient to add an execute condition.
#    The health display clearing and player counting could probably be done every second instead.
#    We keep checking markers even during the POST_GAME to prevent players flying out of bounds.
#    TODO (medium): Return to this.

#PRE_GAME
execute if score #game_state mas.counters = #PRE_GAME mas.enums run effect give @a[tag=mas.player] minecraft:regeneration 1 127 true
execute if score #game_state mas.counters = #PRE_GAME mas.enums run function mas:game/logic/bound_effects
execute if score #game_state mas.counters = #PRE_GAME mas.enums as @e[type=minecraft:marker,tag=mas.entity,scores={mas.ids=0..}] run function mas:game/logic/marker_check

#IN_GAME
execute if score #game_state mas.counters = #IN_GAME mas.enums run function mas:game/logic/tick

#POST_GAME
execute if score #game_state mas.counters = #POST_GAME mas.enums as @e[type=minecraft:marker,tag=mas.entity,scores={mas.ids=0..}] run function mas:game/logic/marker_check

#RESTRICT HEALTH DISPLAY TO SURVIVORS
execute as @a[team=!mas.survivor] run scoreboard players reset @s mas.health

#PLAYER COUNT
scoreboard players set #players mas.counters 0
execute as @a[tag=mas.player] run scoreboard players add #players mas.counters 1

#LOBBY EFFECTS
execute as @a[predicate=mas:locations/lobby_and_voting] unless entity @s[team=mas.lobby] run team join mas.lobby
effect give @a[team=mas.lobby] minecraft:saturation 1 100 true
effect give @a[team=mas.lobby] instant_health 1 100 true
execute unless score #game_state mas.counters = #NO_GAME mas.enums run title @a[team=mas.lobby] actionbar {"text":"MATCH IN PROGRESS - JOIN TO SPECTATE"}
execute as @a[team=mas.lobby] unless entity @s[predicate=mas:locations/lobby_and_voting] run team leave @s

#VOTE CHECK
execute if score #game_state mas.counters = #NO_GAME mas.enums run function mas:game/logic/vote_check
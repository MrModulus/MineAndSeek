# LEAVE
#  Purpose:
#    Leaves a player from the game, due to player choice, player DC, or round end.
#  End Effect:
#    Stops all sounds, leaves current team, removes all game tags, and cleanses. TP's the player back
#    to the lobby and removes their markers, then sends a message depending on the trigger for this function.
#  Called by:
#    game/logic/dc_check, players/leave
#  Additional notes:
#    It's important that we kill the markers on leave so that there are less entities to check for id matching.
#    May be more efficient to combine the marker entity check and simply use mas.entity. Alternatively, if we
#    only id match once (at the round start), the first point doesn't matter and we can just let the round end
#    kill them off. TODO (medium): Return to this.

#STOP SOUND
stopsound @s *

#RESET SELF
team leave @s
tag @s remove mas.player
function mas:game/logic/cleanse
function mas:game/logic/reset_tags

#RESET ID/IDLE
scoreboard players reset @s mas.ids
scoreboard players reset @s mas.counters

#TP BACK TO LOBBY
tp @s 1.5 63 35.5 180 0

#KILL MARKERS
execute at @s as @e[type=minecraft:armor_stand,tag=mas.idle_marker] if score @s mas.ids = @p mas.ids run kill @s
execute at @s as @e[type=minecraft:armor_stand,tag=mas.border_marker] if score @s mas.ids = @p mas.ids run kill @s

#SEND MESSAGE
execute unless score #game_state mas.counters = #POST_GANE mas.enums run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" You have left the game."}]
execute if score #game_state mas.counters = #POST_GAME mas.enums run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" The game has ended. To play again, please rejoin."}]
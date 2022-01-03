# LEAVE
#  This function will let a player leave the game if they're in one.
#  It should only ever be called by round end, dc_check, or the user-facing leave function.

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
#todo: might be more efficient to combine these using mas.entity idk
execute at @s as @e[type=minecraft:armor_stand,tag=mas.idle_marker] if score @s mas.ids = @p mas.ids run kill @s
execute at @s as @e[type=minecraft:armor_stand,tag=mas.border_marker] if score @s mas.ids = @p mas.ids run kill @s

#SEND MESSAGE
execute unless score #game_state mas.counters = #POST_GANE mas.enums run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" You have left the game."}]
execute if score #game_state mas.counters = #POST_GAME mas.enums run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" The game has ended. To play again, please rejoin."}]
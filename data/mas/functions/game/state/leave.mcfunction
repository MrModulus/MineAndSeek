# LEAVE
#  This function will let a player leave the game if they're in one.
#  It should only ever be called by round end, dc_check, or the user-facing leave function.

#STOP SOUND
stopsound @s *

#RESET SELF
function mas:scripts/cleanse
function mas:scripts/reset_tags

#TP BACK TO LOBBY
tp @s 1.5 63 35.5 180 0

#RESET ID
scoreboard players reset @s mas.ids

#KILL MARKERS
#todo: check that the @s gets correctly overwritten here
execute at @s as @e[type=minecraft:armor_stand,tag=mas.idle_marker] if score @s mas.ids = @p mas.ids run kill @s

#REMOVE PLAYER TAG
tag @s remove mas.player

#SEND MESSAGE
execute unless score #game_state mas.counters = #POST_GANE mas.enums run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" You have left the game."}]
execute if score #game_state mas.counters = #POST_GAME mas.enums run tellraw @s ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" The game has ended. To play again, please rejoin."}]
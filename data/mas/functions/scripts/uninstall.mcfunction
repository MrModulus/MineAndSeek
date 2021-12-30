# UNINSTALL
#  This function executes all of the commands required to reset the datapack's impact on the world.

#UNINSTALL MESSAGE
execute if score #INIT mas.enums matches 1 run tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"Mine and Seek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Cleared all Mine and Seek data.","color":"yellow"}]

#REMOVE PERMANENT SCOREBOARDS
scoreboard objectives remove mas.ids
scoreboard objectives remove mas.counters
scoreboard objectives remove mas.enums

#EXECUTE CLEANUP
function mas:scripts/cleanup
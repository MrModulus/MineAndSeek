# UNINSTALL
#  This function executes all of the commands required to reset the datapack's impact on the world.

#UNINSTALL MESSAGE
execute if score #init mas.bools matches 1 run tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Cleared all Mine and Seek data.","color":"yellow"}]

#REMOVE PERMANENT SCOREBOARDS
scoreboard objectives remove mas.ids
scoreboard objectives remove mas.counters
scoreboard objectives remove mas.enums

#EXECUTE CLEANUP
function mas:scripts/cleanup
#mas.player tag removal must be done manually, here, so the cleanup function can be reused
tag @a[tag=mas.player] remove mas.player
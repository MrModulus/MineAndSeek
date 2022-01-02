# INSTALL
#  This function executes all of the one-time setup needed for the datapack.
#  An example of this is scoreboards that need to be persistent between games.

#GAMERULES
gamerule naturalRegeneration false
gamerule doImmediateRespawn true

#SCOREBOARD SETUP
#mas.ids - used to track player/tether pairs and the selected map
scoreboard objectives add mas.ids dummy
#mas.counters - used for tracking game state, player count, survivor count, and idles
scoreboard objectives add mas.counters dummy
#mas.bools - used for tracking datapack init and gamerules (created in init function)
scoreboard players set #init mas.bools 1
#mas.enums - used for storing constant integers
scoreboard objectives add mas.enums dummy
#  settings
scoreboard players set #ONE_HUNTER_LIMIT mas.enums 5
#  states
scoreboard players set #PRE_GAME mas.enums 0
scoreboard players set #IN_GAME mas.enums 1
scoreboard players set #POST_GAME mas.enums 2
#  maps
scoreboard players set #MANSION mas.enums 0
scoreboard players set #FARM mas.enums 1
scoreboard players set #LODGE mas.enums 2

#UPDATE GAME STATE
scoreboard players operation #game_state mas.counters = #POST_GAME mas.enums

#INSTALL MESSAGE
tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"MineAndSeek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Installation Successful!","color":"green"}]


# INSTALL
#  This function executes all of the one-time setup needed for the datapack.
#  An example of this is scoreboards that need to be persistent between games.

#SCOREBOARD SETUP
#mas.ids - used to track player/tether pairs and the selected map
scoreboard objectives add mas.ids
#mas.counters - used for timers and counters
scoreboard objectives add mas.counters
scoreboard players set #<<TIMERS>> mas.counters -1
scoreboard players set #round_timer mas.counters 0
scoreboard players set #music_timer mas.counters 0
scoreboard players set #light_timer mas.counters 0
scoreboard players set #<<COUNTERS>> mas.counters -1
scoreboard players set #players mas.counters 0
scoreboard players set #survivors mas.counters 0
scoreboard players set #<<IDLES>> mas.counters -1
#mas.enums - used for storing constant integers
scoreboard objectives add mas.enums
scoreboard players set #INIT mas.enums 1
scoreboard players set #<<SETTINGS>> mas.enums -1
scoreboard players set #ONE_HUNTER_LIMIT mas.enums 5
scoreboard players set #<<MAP>> mas.enums -1
scoreboard players set #MANSION mas.enums 0
scoreboard players set #FARM mas.enums 1
scoreboard players set #LODGE mas.enums 2
scoreboard players set #MUSIC_RESET mas.enums 4600
scoreboard players set #<<ROUND>> mas.enums -1
scoreboard players set #INACTIVE mas.enums -1
scoreboard players set #START mas.enums 0
scoreboard players set #SURVIVOR_TP mas.enums 600
scoreboard players set #HUNTER_TP mas.enums 900
scoreboard players set #FIVE_MIN_LEFT mas.enums 6900
scoreboard players set #ONE_MIN_LEFt mas.enums 11700
scoreboard players set #END mas.enums 12900

#INSTALL MESSAGE
tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"Mine and Seek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Installation Successful!","color":"green"}]


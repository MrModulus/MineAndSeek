# INFO
#  This function simply prints information about the datapack to the chat.
#  It can be called by any player at any time.

#TOGGLE GAMERULE
execute store result score #gr_scf mas.bools run gamerule sendCommandFeedback
gamerule sendCommandFeedback false

#SEND MESSAGE
tellraw @p ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"----------------","color":"gray"},{"text":" Mine and Seek","bold":true,"color":"blue"},{"text":" ----------------","color":"gray"},{"text":"\n\n                      Datapack Version: "},{"text":"1.0","color":"gold"},{"text":"\n                     Minecraft Version: "},{"text":"1.18","color":"green"},{"text":"\n                    Team Lead: "},{"text":"EternalLawn","color":"yellow"},{"text":"\n                  Developer: "},{"text":"LordKanelsnegle","color":"dark_aqua"},{"text":"\n              Map Design: "},{"text":"Vazurer","color":"dark_purple"},{"text":", "},{"text":"Anna_Bananas","color":"dark_purple"},{"text":"\n\n   "},{"text":"Many thanks to all of our testers and friends too!","color":"light_purple"},{"text":"\n"},{"text":"-----------------------------------------------","color":"gray"}]

#RESET GAMERULE
schedule function mas:gr_scf 1t
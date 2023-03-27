# SAVAGE: ULTIMATE
#  Purpose:
#    Handles the ultimate trigger for the Savage.
#  End Effect:
#    x
#  Called by:
#    game/logic/tick
#  Additional notes:
#    None

#SET ULT DURATION
scoreboard players set @s mas.ult_dur 8
scoreboard players operation @s mas.ult_dur *= #TICKS_PER_SECOND mas.constants

#SET ULTED TO TRUE
scoreboard players set @s mas.ulted 1
# SAVAGE - ASSIGN
#  Purpose:
#    Assigns the Savage kit to a player.
#  End Effect:
#    Player has their kit id set to the Savage kit id and their cooldowns are updated.
#  Called by:
#    command blocks
#  Additional notes:
#    We need to set the non-max cooldowns too so that they have an initial value (for conditional checks elsewhere).

#SET SAVAGE KIT
scoreboard players operation @s mas.kit_ids = #SAVAGE mas.kit_ids

#SET INVENTORY
function mas:game/kits/hunters/savage/equip

#SET COOLDOWNS
scoreboard players set @s mas.passive_cd 0
scoreboard players set @s mas.passive_cd_max 1
scoreboard players operation @s mas.passive_cd_max *= #TICKS_PER_SECOND mas.constants
scoreboard players set @s mas.active_cd 0
scoreboard players set @s mas.active_cd_max 40
scoreboard players operation @s mas.active_cd_max *= #TICKS_PER_SECOND mas.constants
scoreboard players set @s mas.ulted 0
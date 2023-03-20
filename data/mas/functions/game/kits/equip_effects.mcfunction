# EQUIP EFFECTS
#  Purpose:
#    Handles the equip effects.
#  End Effect:
#    Runs all of the equips for each kit.
#  Called by:
#    advancements/inventory_changed
#  Additional notes:
#    None

#HUNTERS
execute if score @s mas.kit_ids = #SAVAGE mas.kit_ids run function mas:game/kits/hunters/savage/equip

#SURVIVORS


#REVOKE ADVANCEMENT
advancement revoke @s only mas:inv_changed
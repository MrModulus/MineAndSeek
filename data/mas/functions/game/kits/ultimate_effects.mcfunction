# ULTIMATE EFFECTS
#  Purpose:
#    Handles the ultimate effects.
#  End Effect:
#    Runs all of the ultimates for each kit.
#  Called by:
#    game/logic/tick
#  Additional notes:
#    None

#HUNTERS
execute if score @s[scores={mas.ulted=0}] mas.kit_ids = #SAVAGE mas.kit_ids run function mas:game/kits/hunters/savage/ultimate

#SURVIVORS


#ERRORS
title @s[scores={mas.ulted=1}] actionbar ["",{"text":"ULTIMATE HAS ALREADY BEEN USED"}]
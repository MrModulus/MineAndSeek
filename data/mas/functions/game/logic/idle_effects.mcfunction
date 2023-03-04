# IDLE EFFECTS
#  Purpose:
#    Executes the idle effects required during the game.
#  End Effect:
#    Shows warning text at 20 seconds and penalty text+effect at 30 seconds.
#  Called by:
#    game/logic/tick
#  Additional notes:
#    None.

#WARNING (20s)
title @s[scores={mas.counters=400}] title ["",{"text":"Warning","bold":false,"italic":false,"color":"white"}]
title @s[scores={mas.counters=400}] subtitle ["",{"text":"You will be revealed soon unless you move!","bold":false,"italic":false,"color":"white"}]

#PENALTY (30s+)
effect give @s[scores={mas.counters=600..}] minecraft:glowing 2 0 true
title @s[scores={mas.counters=600..}] actionbar ["",{"text":"YOU ARE VISIBLE - Move to stay hidden!","bold":false,"italic":false,"color":"white"}]
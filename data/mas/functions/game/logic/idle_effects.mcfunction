# IDLE EFFECTS
#  Purpose:
#    Executes the idle effects required during the game.
#  End Effect:
#    Shows warning text at 25 seconds and penalty text+effect at 30 seconds.
#  Called by:
#    game/logic/tick_second
#  Additional notes:
#    None.

#WARNING (25s)
title @s[scores={mas.counters=25}] title ["",{"text":"Warning","bold":false,"italic":false,"color":"white"}]
title @s[scores={mas.counters=25}] subtitle ["",{"text":"You will be revealed soon unless you move!","bold":false,"italic":false,"color":"white"}]

#PENALTY (30s+)
effect give @s[scores={mas.counters=30..}] minecraft:glowing 2 0 true
title @s[scores={mas.counters=30..}] actionbar ["",{"text":"YOU ARE VISIBLE - Move to stay hidden!","bold":false,"italic":false,"color":"white"}]
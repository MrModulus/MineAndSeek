# HALFWAY MESSAGE
#  Purpose:
#    Informs the players that the halfway mark has been reached and sets up the timer for the next warning.
#  End Effect:
#    Messages a title and subtitle to each player, schedules the one minute message.
#  Called by:
#    game/state/round_start
#  Additional notes: 
#    Using the scheduling method, this function is essential as it stretches the round duration.

#DISPLAY TEXT
title @a[tag=mas.player] title ["",{"text":"HALFWAY THERE","bold":true,"italic":false,"color":"white"}]
title @a[team=mas.hunter] subtitle ["",{"text":"Get them already!","bold":true,"italic":false,"color":"red"}]
title @a[team=mas.survivor] subtitle ["",{"text":"Youre doing well!","bold":true,"italic":false,"color":"blue"}]

#SCHEDULE HALFTIME MSG
execute if predicate mas:map/is_small run schedule function mas:game/logic/one_min_msg 120s
execute if predicate mas:map/is_medium run schedule function mas:game/logic/one_min_msg 180s
execute if predicate mas:map/is_large run schedule function mas:game/logic/one_min_msg 240s

# ONE MINUTE MESSAGE
#  This function broadcasts that there is only one minute left and schedules the survivor win condition.
#  It should only ever be called from the schedule command in five_min_msg.

#DISPLAY TEXT
title @a title ["",{"text":"1 MIN LEFT","bold":true,"italic":false,"color":"white"}]
title @a[team=mas.hunter] subtitle ["",{"text":"Hurry! Dont let them escape!","bold":true,"italic":false,"color":"red"}]
title @a[team=mas.survivor] subtitle ["",{"text":"Hang in there!","bold":true,"italic":false,"color":"blue"}]

#SCHEDULE SURVIVOR WIN
schedule function mas:game/logic/win_survivors 60s
# FIVE MINUTES MESSAGE
#  This function broadcasts that there is only five minutes left and schedules the one minute message.
#  It should only ever be called from the schedule command in spawn_hunters.

#DISPLAY TEXT
title @a title ["",{"text":"5 MIN LEFT","bold":true,"italic":false,"color":"white"}]
title @a[team=mas.hunter] subtitle ["",{"text":"Get them already!","bold":true,"italic":false,"color":"red"}]
title @a[team=mas.survivor] subtitle ["",{"text":"Youre doing well!","bold":true,"italic":false,"color":"blue"}]

#SCHEDULE 1 MIN MSG
schedule function mas:game/logic/one_min_msg 240s
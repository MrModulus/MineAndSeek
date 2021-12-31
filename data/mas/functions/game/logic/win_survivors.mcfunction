# WIN: SURVIVORS
#  This function triggers when the timer has run out, broadcasting a message.
#  It should only ever be called from the scheduled command in one_min_msg.

#DISPLAY TEXT
title @a[tag=mas.player] title ["",{"text":"Survivors Win","bold":true,"italic":true,"color":"dark_blue"}]
title @a[team=mas.survivor] subtitle ["",{"text":"GGWP!","bold":true,"italic":false,"color":"blue"}]
title @a[team=mas.hunter] subtitle ["",{"text":"Better luck next time!","bold":true,"italic":false,"color":"blue"}]

#TRIGGER ROUND END
function mas:game/logic/round_end
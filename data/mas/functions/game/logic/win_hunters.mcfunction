# WIN: HUNTERS
#  This function triggers when all survivors have been killed, broadcasting a message and clearing all schedules.
#  It should only ever be called from the tick function.

#DISPLAY TEXT
title @a[tag=mas.player] title ["",{"text":"Hunters Win","bold":true,"italic":true,"color":"dark_red"}]
title @a[team=mas.survivor] subtitle ["",{"text":"Better luck next time!","bold":true,"italic":false,"color":"red"}]
title @a[team=mas.hunter] subtitle ["",{"text":"GGWP!","bold":true,"italic":false,"color":"red"}]

#TRIGGER ROUND END
function mas:game/logic/round_end
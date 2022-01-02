# WIN: HUNTERS
#  This function triggers when all survivors have been killed, broadcasting a message and clearing all schedules.
#  It should only ever be called from the tick function.

#SET ALL TO SPECTATOR
tag @a[tag=mas.player] add mas.spectator

#DISPLAY TEXT
title @a[tag=mas.player] title ["",{"text":"Hunters Win","bold":true,"italic":true,"color":"dark_red"}]
title @a[team=mas.survivor] subtitle ["",{"text":"Better luck next time!","bold":true,"italic":false,"color":"red"}]
title @a[team=mas.hunter] subtitle ["",{"text":"GGWP!","bold":true,"italic":false,"color":"red"}]

#WIN/LOSS SOUND EFFECTS
execute at @a[team=mas.hunter] run playsound block.end_portal.spawn ambient @a ~ ~ ~ 1 2
execute at @a[team=mas.survivor] run playsound block.end_portal.spawn ambient @a ~ ~ ~ 1 0.8

#SHOW FIREWORKS
execute at @a[tag=mas.player] run summon minecraft:firework_rocket ^ ^1 ^1 {Life:0,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;11141120],FadeColors:[I;11141120]}]}}}}

#TRIGGER ROUND END
schedule function mas:game/state/end 5s
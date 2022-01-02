# WIN: SURVIVORS
#  This function triggers when the timer has run out, broadcasting a message.
#  It should only ever be called from the scheduled command in one_min_msg.

#SET ALL TO SPECTATOR
tag @a[tag=mas.player] add mas.spectator

#DISPLAY TEXT
title @a[tag=mas.player] title ["",{"text":"Survivors Win","bold":true,"italic":true,"color":"dark_blue"}]
title @a[team=mas.survivor] subtitle ["",{"text":"GGWP!","bold":true,"italic":false,"color":"blue"}]
title @a[team=mas.hunter] subtitle ["",{"text":"Better luck next time!","bold":true,"italic":false,"color":"blue"}]

#WIN/LOSS SOUND EFFECTS
execute at @a[team=mas.survivor] run playsound block.end_portal.spawn ambient @a ~ ~ ~ 1 2
execute at @a[team=mas.hunter] run playsound block.end_portal.spawn ambient @a ~ ~ ~ 1 0.8

#SHOW FIREWORKS
execute at @a[tag=mas.player] run summon minecraft:firework_rocket ^ ^1 ^1 {Life:0,LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;170],FadeColors:[I;170]}]}}}}

#TRIGGER ROUND END
schedule function mas:game/state/end 5s
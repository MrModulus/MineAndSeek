#Select two random, untagged players for the swap
tag @r[tag=deathswap.player,gamemode=survival,tag=!deathswap.teleported,limit=1] add deathswap.teleporter
execute at @p[tag=deathswap.teleporter] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["global.ignore","deathswap.placeholder"]}
execute at @p[tag=deathswap.teleporter] run tag @r[tag=deathswap.player,gamemode=survival,tag=!deathswap.teleporter,limit=1] add deathswap.teleportee

#In case there was no match (e.g. odd number of players), pick any at random
execute unless entity @p[tag=deathswap.teleportee] run tag @r[gamemode=survival,tag=!deathswap.teleporter,limit=1] add deathswap.teleportee

#Swap the players and write the players that got swapped to the chat
tp @p[tag=deathswap.teleporter] @p[tag=deathswap.teleportee]
tellraw @p[tag=deathswap.teleporter] ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Swapped with "},{"selector":"@p[tag=deathswap.teleportee]","color":"gold"},{"text":"!"}]
tp @p[tag=deathswap.teleportee] @e[tag=deathswap.placeholder,limit=1]
tellraw @p[tag=deathswap.teleportee] ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Swapped with "},{"selector":"@p[tag=deathswap.teleporter]","color":"gold"},{"text":"!"}]

#Swap cleanup
kill @e[tag=deathswap.placeholder]
tag @p[tag=deathswap.teleporter] add deathswap.teleported
tag @p[tag=deathswap.teleporter] remove deathswap.teleporter
tag @p[tag=deathswap.teleportee] add deathswap.teleported
tag @p[tag=deathswap.teleportee] remove deathswap.teleportee
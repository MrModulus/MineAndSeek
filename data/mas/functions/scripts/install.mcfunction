#Install the necessary scoreboards
#scoreboard objectives add deathswap.deaths deathCount
#scoreboard objectives add deathswap.health health
#scoreboard objectives setdisplay list deathswap.health

#Create the constants for the timer score comparisons
#scoreboard players set ZERO deathswap.vars 0
#scoreboard players set ONE deathswap.vars 1200
#scoreboard players set TWO deathswap.vars 2400
#scoreboard players set THREE deathswap.vars 3600
#scoreboard players set FOUR deathswap.vars 4800

#Set 'init' and timer initial values
scoreboard players set init mas.vars 1
#scoreboard players set timer mas.vars -2

#Summon the spawnpoint armorstand
#summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["global.ignore","deathswap.spawn"]}

#Display the installation message
tellraw @a ["",{"text":"[","bold":true,"color":"gray"},{"text":"Mine and Seek","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Installation Successful!","color":"green"}]


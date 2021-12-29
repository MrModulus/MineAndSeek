#Save the current gamerule states
execute store result score gr_respawn deathswap.vars run gamerule doImmediateRespawn
execute store result score gr_spectator deathswap.vars run gamerule spectatorsGenerateChunks
execute store result score gr_command deathswap.vars run gamerule commandBlockOutput
execute store result score gr_weather deathswap.vars run gamerule doWeatherCycle

#Run the necessary gamerules
gamerule doImmediateRespawn true
gamerule spectatorsGenerateChunks false
gamerule commandBlockOutput false
gamerule doWeatherCycle false

#Clear weather and set time to day
weather clear

#Reset death counters
scoreboard players set @a[tag=deathswap.player] deathswap.deaths 0

#Initialise health display and players
scoreboard objectives setdisplay list deathswap.health
execute as @a[tag=deathswap.player] run function deathswap:logic/player_setup

#TP players to random location
spreadplayers 0 0 1000 10000000 false @a[tag=deathswap.player]

#Start the round timer
scoreboard players set timer deathswap.vars 6000

tellraw @a[tag=deathswap.player] ["",{"text":"[","bold":true,"color":"gray"},{"text":"DeathSwap","bold":true,"color":"blue"},{"text":"]","bold":true,"color":"gray"},{"text":" Game starting!"}]
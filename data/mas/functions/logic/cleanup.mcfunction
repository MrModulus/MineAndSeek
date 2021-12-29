#Restore the previous gamerule states
#execute if score gr_respawn deathswap.vars matches 0 run gamerule doImmediateRespawn false
#execute if score gr_spectator deathswap.vars matches 1 run gamerule spectatorsGenerateChunks true
#execute if score gr_command deathswap.vars matches 1 run gamerule commandBlockOutput true
#execute if score gr_weather deathswap.vars matches 1 run gamerule doWeatherCycle true

#Kill placeholder armorstand
#kill @e[tag=deathswap.placeholder]

#Remove all tags
#tag @p[tag=deathswap.teleporter] remove deathswap.teleporter
#tag @p[tag=deathswap.teleportee] remove deathswap.teleportee
#tag @a[tag=deathswap.teleported] remove deathswap.teleported
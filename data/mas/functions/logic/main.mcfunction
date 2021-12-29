#Update player count - set to 0, if no game in progress then count players regardless of gamemode, otherwise only count survival players
scoreboard players set players deathswap.vars 0
execute as @a[tag=deathswap.player] if score timer deathswap.vars matches -2 run scoreboard players add players deathswap.vars 1
execute as @a[tag=deathswap.player,gamemode=survival] unless score timer deathswap.vars matches -2 run scoreboard players add players deathswap.vars 1

#Run the timer if a game is in progress
execute if score timer deathswap.vars >= ZERO deathswap.vars run function deathswap:logic/timer

#Run core logic (which should run even if timer isnt, but not if there is no game in progress)
execute unless score timer deathswap.vars matches -2 run function deathswap:logic/core


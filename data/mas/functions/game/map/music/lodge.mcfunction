# MUSIC: LODGE
#  Purpose:
#    Plays and loops the music for the Lodge map.
#  End Effect:
#    Plays music if we are still in a round, then waits for the right time to loop it.
#  Called by:
#    game/map/mansion
#  Additional notes:
#    None

#PLAY MUSIC // TODO (high): Fix these later, once lodge is finished
stopsound @a[tag=mas.player]
playsound minecraft:music_disc.pigstep master @a[tag=mas.player] ~ 1000 ~ 100 0.6 1

#LOOP EVERY 230 SECONDS
schedule function mas:game/map/music/lodge 230s
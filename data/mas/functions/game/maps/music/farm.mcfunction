# MUSIC: FARM
#  Purpose:
#    Plays and loops the music for the Farm map.
#  End Effect:
#    Plays music if we are still in a round, then waits for the right time to loop it.
#  Called by:
#    game/maps/farm
#  Additional notes:
#    Ideally we shouldn't check the same condition twice, but it's not too pressing at the moment to make two 
#    commands into their own function. TODO (low): Return to this.

#PLAY MUSIC
execute if score #game_state mas.counters = #IN_GAME mas.enums run playsound minecraft:music_disc.13 music @a ~ 1000 ~ 100 0.8 1

#LOOP EVERY 135 SECONDS
execute if score #game_state mas.counters = #IN_GAME mas.enums run schedule function mas:game/maps/music/farm 135s
# MUSIC: MANSION
#  Purpose:
#    Plays and loops the music for the Mansion map.
#  End Effect:
#    Plays music if we are still in a round, then waits for the right time to loop it.
#  Called by:
#    game/maps/mansion
#  Additional notes:
#    Ideally we shouldn't check the same condition twice, but it's not too pressing at the moment to make two 
#    commands into their own function. TODO (low): Return to this.

#PLAY MUSIC
execute if score #game_state mas.counters = #IN_GAME mas.enums run playsound minecraft:music_disc.pigstep music @a ~ 1000 ~ 100 0.6 1

#LOOP EVERY 230 SECONDS
execute if score #game_state mas.counters = #IN_GAME mas.enums run schedule function mas:game/maps/music/masion 230s
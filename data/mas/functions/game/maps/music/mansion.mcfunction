# MUSIC: MANSION
#  This function plays and loops the music for the Mansion map.
#  It should only ever be called by the map_music function.
#  Ideally I wouldn't check the same condition twice, but it's not worth making the two commands into their own function.

#PLAY MUSIC
execute if score #game_state mas.counters = #IN_GAME mas.enums run playsound minecraft:music_disc.pigstep music @a ~ 1000 ~ 100 0.6 1

#LOOP
execute if score #game_state mas.counters = #IN_GAME mas.enums run schedule function mas:game/maps/music/masion 230s
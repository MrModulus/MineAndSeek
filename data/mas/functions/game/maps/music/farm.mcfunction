# MUSIC: FARM
#  This function plays and loops the music for the Farm map.
#  It should only ever be called by the map_music function.
#  Ideally I wouldn't check the same condition twice, but it's not worth making the two commands into their own function.

#PLAY MUSIC
execute if score #game_state mas.counters = #IN_GAME mas.enums run playsound minecraft:music_disc.13 music @a ~ 1000 ~ 100 0.8 1

#LOOP
execute if score #game_state mas.counters = #IN_GAME mas.enums run schedule function mas:game/maps/music/farm 135s
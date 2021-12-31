# BORDERS: FARM
#  This function continously checks the borders for the Farm map.
#  It should only ever be called by the map_borders function or itself.

#CHECK BORDERS
#top - extended by 100 to cover corners, must be checked first
execute at @a[tag=mas.player,x=-23,y=0,z=-40,dx=100,dy=250,dz=263,limit=1] run tp @p -24 ~ ~
#bottom - extended by 100 to cover corners, must be checked first
execute at @a[tag=mas.player,x=-61,y=0,z=-40,dx=-100,dy=250,dz=263,limit=1] run tp @p -60 ~ ~
#left
execute at @a[tag=mas.player,x=-61,y=0,z=60,dx=38,dy=250,dz=-100,limit=1] run tp @p ~ ~ 59
#right
execute at @a[tag=mas.player,x=-61,y=0,z=123,dx=38,dy=250,dz=100,limit=1] run tp @p ~ ~ 122

#LOOP
execute if score #game_state mas.counters = #IN_GAME mas.enums run schedule function mas:game/maps/borders/farm 1s
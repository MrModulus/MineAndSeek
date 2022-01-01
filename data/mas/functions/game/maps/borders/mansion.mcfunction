# BORDERS: MANSION
#  This function continously checks the borders for the Mansion map.
#  It should only ever be called by the map setup functions or itself.

#CHECK BORDERS
#top - extended by 100 to cover corners, must be checked first
execute at @a[tag=mas.player,x=59,y=0,z=-43,dx=100,dy=250,dz=268,limit=1] run tp @p 58 ~ ~
#bottom - extended by 100 to cover corners, must be checked first
execute at @a[tag=mas.player,x=-13,y=0,z=-43,dx=-100,dy=250,dz=268,limit=1] run tp @p -12 ~ ~
#left
execute at @a[tag=mas.player,x=-13,y=0,z=57,dx=72,dy=250,dz=-100,limit=1] run tp @p ~ ~ 56
#right
execute at @a[tag=mas.player,x=-13,y=0,z=125,dx=72,dy=250,dz=100,limit=1] run tp @p ~ ~ 124

#LOOP
execute if score #game_state mas.counters = #IN_GAME mas.enums run schedule function mas:game/maps/borders/mansion 1s
# SETUP: BLANK
#  Purpose:
#    Loads a blank map to break containers and handle entities, before the actual map gets set up.
#  End Effect:
#    Map is loaded and all entities are killed.
#  Called by:
#    game/map/setup
#  Additional notes:
#    None

#LOAD MAP
place template mas:blank1 -1455 19 -82
place template mas:blank2 -1455 19 -34
place template mas:blank3 -1503 19 -82
place template mas:blank4 -1503 19 -34
kill @e[x=-1504,y=17,z=-83,dx=97,dy=49,dz=97,type=!minecraft:player]
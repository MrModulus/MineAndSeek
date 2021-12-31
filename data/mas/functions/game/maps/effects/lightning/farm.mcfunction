# LIGHTNING: FARM
#  This function will control the lightning effect for the Farm map.
#  This should only ever be called by the lightning function and itself.

#RANDOMIZE MARKER
spreadplayers 23 91 0 32 false @e[tag=mas.lightning,limit=1]
execute unless entity @e[tag=mas.lightning,x=-61,y=26,z=60,dx=38,dy=24,dz=63,limit=1] run schedule function mas:game/maps/effects/lightning/farm 1t
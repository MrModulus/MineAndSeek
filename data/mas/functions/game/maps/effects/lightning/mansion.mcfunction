# LIGHTNING: MANSION
#  This function will control the lightning effect for the Mansion map.
#  This should only ever be called by the lightning function and itself.

#RANDOMIZE MARKER
spreadplayers 23 91 0 36 false @e[type=minecraft:armor_stand,tag=mas.lightning,limit=1]
execute unless entity @e[type=minecraft:armor_stand,tag=mas.lightning,x=-13,y=31,z=57,dx=72,dy=25,dz=68,limit=1] run schedule function mas:game/maps/effects/lightning/mansion 1t
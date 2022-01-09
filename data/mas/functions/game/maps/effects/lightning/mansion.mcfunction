# LIGHTNING: MANSION
#  Purpose:
#    Scramble the lightning marker using the Mansion boundaries.
#  End Effect:
#    Spawns the marker randomly in a radius, then loops itself until the marker position is within
#    the map's boundaries.
#  Called by:
#    game/maps/effects/lightning, then itself
#  Additional notes:
#    Using the predicate directly in the selector for the schedule condition may be more efficient. Also,
#    we use the bigger of x1-x2 and z1-z2 to determine spreadplayers radius, but there must be a better way,
#    such as using random scoreboard vars to set the marker position within bounds.
#    TODO (medium): Explore this.

#RANDOMIZE MARKER
spreadplayers 23 91 0 72 false @e[type=minecraft:marker,tag=mas.lightning,limit=1]
execute as @e[type=minecraft:marker,tag=mas.lightning,limit=1] unless predicate mas:maps/mansion/in_bounds run schedule function mas:game/maps/effects/lightning/mansion 1t
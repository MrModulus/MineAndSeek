# IDLE CHECK
#  Purpose:
#    Punishes players for AFKing in a single spot for too long or just jiggling back and forth to avoid penalty.
#  End Effect:
#    Increments the idle counter if in range of the player, teleports the marker to the player (while within map bounds)
#    and resets the idle counter otherwise.
#  Called by:
#    game/logic/marker_check
#  Additional notes:
#    The tether range is currently hardcoded as 5 as distance can't be compared to a score (our enum).
#    We need to check for mas.spectator tag even though spectators don't have idle markers, because abilities can also tag
#    players as mas.spectator (e.g. polymorph). An alternative would be to reset counter for all mas.spectator constantly.
#    We TP the marker when the idle effects are proc'ing so that they have to move 5 blocks *as of receiving the warning*,
#    to prevent inconsistency (e.g. if they were on the edge of the tether range up until then, they'd only need to move by
#    one). The second proc's TP isn't super useful but is for the edge case where a user moves after the warning but stays
#    within 5 blocks.
#    @s represents the marker, @p represents the player.

#WITHIN TETHER RANGE
execute if entity @s[distance=..5] if score @p[tag=!mas.spectator] mas.ids = @s mas.ids run scoreboard players add @p mas.counters 1

#OUTSIDE TETHER RANGE
execute unless entity @s[distance=..5] run scoreboard players set @p mas.counters 0
execute if score @p[x=-1503,y=18,z=-82,dx=95,dy=95,dz=95] mas.ids = @s mas.ids unless entity @s[distance=..5] run tp @s @p

#IDLE EFFECT PROCS
execute if score @p[x=-1503,y=18,z=-82,dx=95,dy=95,dz=95,scores={mas.counters=25}] mas.ids = @s mas.ids run tp @s @p
execute if score @p[x=-1503,y=18,z=-82,dx=95,dy=95,dz=95,scores={mas.counters=30}] mas.ids = @s mas.ids run tp @s @p
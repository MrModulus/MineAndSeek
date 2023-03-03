# BOUNDS CHECK
#  Purpose:
#    Ensures players stay within the map bounds.
#  End Effect:
#    TP's the bound marker to the player if they are within bounds, TP's the player to the marker if not.
#  Called by:
#    game/logic/marker_check
#  Additional notes:
#    We use this TP method to avoid manually checking which bound the player has violated (+x,-x,+y,-y,+z,-z)
#    and instead just TP the player back to their last in-bounds position.
#    @s represents the marker, @p represents the player.

#WITHIN MAP RANGE
tp @s @a[x=-1503,y=18,z=-82,dx=95,dy=95,dz=95,tag=mas.check,limit=1]

#OUTSIDE MAP RANGE
execute unless entity @a[x=-1503,y=18,z=-82,dx=95,dy=95,dz=95,tag=mas.check,limit=1] run tp @a[tag=mas.check,limit=1] @s
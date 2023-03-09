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

#WITHIN PLAYER BOUNDS
tp @s @a[predicate=mas:locations/player_bounds,tag=mas.check,limit=1]

#OUTSIDE PLAYER BOUNDS
execute unless entity @a[predicate=mas:locations/player_bounds,tag=mas.check,limit=1] run tp @a[tag=mas.check,limit=1] @s
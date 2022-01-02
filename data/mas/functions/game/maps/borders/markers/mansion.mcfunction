# BORDERS: MANSION MARKER
#  This function controls the player border markers for the Mansion map.
#  @s represents an armor_stand (range marker) with a given mas.id, @p represents the matching player.
#  It should only ever be called by the farm border function.

#PLAYER IN RANGE
execute if predicate mas:maps/in_mansion_range run tp @s @p

#PLAYER NOT IN RANGE
execute unless predicate mas:maps/in_mansion_range run tp @p @s
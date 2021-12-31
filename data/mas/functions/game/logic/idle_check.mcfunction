# IDLE CHECK
#  This function checks to see if a player is within range of their tether and acts accordingly.
#  @s represents an armor_stand (tether) with a given mas.id, @p represents the matching player.
#  The tether range is currently a hardcoded 5 blocks as distance can't be compared to a score (our enum).

#WITHIN TETHER RANGE
execute if entity @s[distance=..5] run scoreboard players add @p mas.counters 1

#OUTSIDE TETHER RANGE
execute unless entity @s[distance=..5] run scoreboard players set @p mas.counters 0
execute unless entity @s[distance=..5] run tp @s @p
# CLEANSE
#  This function simply clears inventory, effects, and XP then heals/restores hunger and sets gamemode.
#  Should only really be run before and after every game.

clear
effect clear
xp set @s 0 levels
xp set @s 0 points
gamemode adventure
effect give @s minecraft:saturation 1 100 true
#force health display update
effect give @s minecraft:instant_damage 1 0 true
effect give @s minecraft:instant_health 1 100 true
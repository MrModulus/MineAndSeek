# CLEANSE
#  Purpose:
#    Reset player to their state prior to playing the game. This is necessary before the game, after the game, and if a player leaves mid-game.
#  End Effect:
#    Cleared inventory, effects, and XP. Restored hunger and health. Gamemode adventure.
#  Called by:
#    game/state/start, game/state/leave
#  Additional notes:
#    Ideally, we should restore inventory/effects/xp/hunger/health/gamemode rather than resetting them.
#    There is room to abuse this by joining/leaving in order to reset hunger and health, but unlikely.
#    TODO (low): Return to this.

#RESET PLAYER STATUS
clear
effect clear
xp set @s 0 levels
xp set @s 0 points
gamemode adventure
effect give @s minecraft:saturation 1 100 true
#force health display update
effect give @s minecraft:instant_damage 1 0 true
effect give @s minecraft:instant_health 1 100 true
# TICK
#  Purpose:
#    Executes round-specific functionality that MUST be ran per tick.
#  End Effect:
#    Kills all foreign entities within the map bounds and checks for player deaths.
#  Called by:
#    scripts/main
#  Additional notes:
#    Need to check death tickwise for death effects and spectator tp to work properly.

#BOUND EFFECTS
function mas:game/logic/bound_effects

#DEATH CHECK
execute as @a[team=mas.survivor,scores={mas.death=1..}] at @s run function mas:game/logic/death
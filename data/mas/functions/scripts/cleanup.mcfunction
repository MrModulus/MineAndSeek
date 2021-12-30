# CLEANUP
#  This function cleans up any loose ends at the end of a game or during an uninstall.
#  Some examples include clearing scoreboards/teams/etc and stopping sounds.

#RESET PLAYERS
execute as @a[tag=mas.player] run function mas:scripts/cleanse
execute as @a[tag=mas.player] run function mas:scripts/reset_tags

#REMOVE TEMPORARY SCOREBOARDS
scoreboard objectives remove mas.death
scoreboard objectives remove mas.health

#REMOVE TEMPORARY TEAMS
team remove mas.survivor
team remove mas.hunter
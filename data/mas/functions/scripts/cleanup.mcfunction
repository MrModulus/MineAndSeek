# CLEANUP
#  This function cleans up any loose ends at the start/end of a game or during an uninstall.
#  Some examples include clearing scoreboards/teams/etc and stopping sounds.

#REMOVE GAME ENTITIES
kill @e[tag=mas.entity]

#REMOVE TEMPORARY SCOREBOARDS
scoreboard objectives remove mas.death
scoreboard objectives remove mas.health
scoreboard players reset * mas.counters

#REMOVE TEMPORARY TEAMS
team remove mas.survivor
team remove mas.hunter
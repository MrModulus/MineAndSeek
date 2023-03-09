# ASSIGN TEAMS
#  Purpose:
#    Places all players on the Survivors team and initiates Hunter assignment.
#  End Effect:
#    Hunters and Survivors are assigned according to the ratio defined in the scoreboard settings.
#  Called by:
#    players/start
#  Additional notes:
#    None

#ASSIGN SURVIVORS
team join mas.survivor @a[tag=mas.player]

#ASSIGN HUNTERS
function mas:game/logic/assign_hunters
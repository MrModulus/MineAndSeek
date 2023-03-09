# MAP SELECT
#  Purpose:
#    Selects the map based on the vote results.
#  End Effect:
#    Map ID is set according to last-highest score (randomly sorted).
#  Called by:
#    game/state/start
#  Additional notes:
#    None

#SET MAP ID BASED ON TAG
execute if entity @s[tag=mas.vote_mansion] run scoreboard players operation #map mas.ids = #MANSION mas.enums
execute if entity @s[tag=mas.vote_farm] run scoreboard players operation #map mas.ids = #FARM mas.enums
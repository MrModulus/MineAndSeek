# GAMERULE: SENDCOMMANDFEEDBACK
#  This function sets the scf gamerule back to its previous value.
#  It should only ever be run by the info function.

#RESET GAMERULE
execute if score #gr_scf mas.bools matches 0 run gamerule sendCommandFeedback false
execute if score #gr_scf mas.bools matches 1 run gamerule sendCommandFeedback true
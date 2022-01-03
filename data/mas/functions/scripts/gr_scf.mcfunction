# GAMERULE: SENDCOMMANDFEEDBACK
#  Purpose:
#    Used for restoring the sendCommandFeedback gamerule to its original value.
#  End Effect:
#    Sets the scf gamerule to whatever it was before.
#  Called by:
#    players/info
#  Additional notes:
#    None

#RESET GAMERULE
execute if score #gr_scf mas.bools matches 0 run gamerule sendCommandFeedback false
execute if score #gr_scf mas.bools matches 1 run gamerule sendCommandFeedback true
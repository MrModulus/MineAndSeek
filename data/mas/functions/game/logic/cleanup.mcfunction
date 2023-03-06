# CLEANUP
#  Purpose:
#    Reduce redundant code between round_end and end by executing code common to both here instead and using tags.
#  End Effect:
#    Clears all round-specific schedules.
#  Called by:
#    #mas:forced_end, #mas:normal_end
#  Additional notes:
#    None

#CLEAR ROUND SCHEDULES
schedule clear mas:game/logic/xp_timer
schedule clear mas:game/logic/halfway_msg
schedule clear mas:game/logic/one_min_msg
schedule clear mas:game/logic/win_survivors

# INIT
#  Purpose:
#    Executes on datapack or world reload. Used for resetting game/player state and setting up the datapack
#    if it hasn't been already.
#  End Effect:
#    Installs the datapack if it hasn't been installed yet, then resets the game state using the end function
#    and the player state using the dc_check function.
#  Called by:
#    minecraft
#  Additional notes:
#    Schedules are cleared on load, which is why dc_check needs to be renewed here.

#REQUIRED SCOREBOARD
scoreboard objectives add mas.bools dummy

#EXECUTE SETUP
execute if score #init mas.bools matches 0 run function #mas:setup

#END ANY EXISTING GAME
function mas:game/state/end

#PREVENT MID-GAME LEAVE EXPLOIT
function mas:game/logic/dc_check
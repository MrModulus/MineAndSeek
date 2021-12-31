# INIT
#  This function is required to prevent the install function from running everytime the pack or world is reloaded.

#REQUIRED SCOREBOARD
scoreboard objectives add mas.bools dummy

#EXECUTE SETUP
execute if score #init mas.bools matches 0 run function #mas:setup
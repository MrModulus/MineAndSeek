# INIT
#  This function is required to prevent the install function from running everytime the pack or world is reloaded.

#EXECUTE SETUP
execute unless score #INIT mas.enums matches 1 run function #mas:setup
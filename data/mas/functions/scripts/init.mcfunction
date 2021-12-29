#Create the mas.vars objective if it doesnt exist already
scoreboard objectives add mas.vars dummy

#Install the datapack if it hasnt already been
execute unless score init mas.vars matches 1 run function #mas:setup
schedule function mas:tests/tick 1t
tellraw @a ["",{"text":"Tick: "},{"score":{"name":"#test","objective":"mas.counters"}}]
scoreboard players add #test mas.counters 1
execute if score #test mas.counters matches 500 run scoreboard players set #test mas.counters 0
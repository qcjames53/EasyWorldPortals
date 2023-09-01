scoreboard players set #iz_active v 0

execute as @e[tag=trigger,tag=iz_source] at @s run clone -16 -49 -16 16 -31 16 ~-16 ~-1 ~-16

tag @e[tag=trigger] remove iz_source
tag @e[tag=trigger] remove iz_destination
scoreboard players add #rc_z v 1

execute store result storage input row int 1 run scoreboard players get #rc_z v
execute if score #rc_z v matches 0.. run function portal:portal/ticking/store_coords with storage minecraft:input

execute if score #rc_z v matches ..16 run function portal:portal/ticking/populate_remaining
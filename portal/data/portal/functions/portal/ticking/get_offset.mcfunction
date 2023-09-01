execute store result score #rc_x v run data get entity @s Pos[0] 1
execute store result score #rc_z v run data get entity @s Pos[2] 1
scoreboard players operation #rc_x v -= #iz_source_x v
scoreboard players operation #rc_z v -= #iz_source_z v
execute unless score #rc_x v matches -15..15 run scoreboard players set #rc_depth v 0
execute unless score #rc_z v matches -15..15 run scoreboard players set #rc_depth v 0
execute store result storage input row int 1 run scoreboard players get #rc_z v
execute store result storage input col int 1 run scoreboard players get #rc_x v
execute if score #rc_z v matches 0.. run function portal:portal/ticking/store_coords with storage minecraft:input

# handle boundaries
execute if score #rc_x v matches ..-16 run function portal:portal/ticking/populate_remaining
execute if score #rc_x v matches 16.. run function portal:portal/ticking/populate_remaining

kill @s
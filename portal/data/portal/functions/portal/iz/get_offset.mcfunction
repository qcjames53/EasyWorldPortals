execute store result score #rc_x v run data get entity @s Pos[0] 1
execute store result score #rc_z v run data get entity @s Pos[2] 1
scoreboard players operation #rc_x v -= #iz_source_x v
scoreboard players operation #rc_z v -= #iz_source_z v
kill @s
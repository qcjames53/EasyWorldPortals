particle minecraft:dust 1 0 0 0.5 ~ ~ ~ 0 0 0 1 1
execute positioned ~-0.5 ~ ~0.5 summon minecraft:marker run function portal:portal/ticking/get_offset
scoreboard players remove #rc_depth v 1
execute if score #rc_depth v matches 1.. positioned ^ ^ ^1 run function portal:portal/ticking/raycast_l
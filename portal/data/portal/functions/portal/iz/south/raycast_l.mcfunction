# Run the left boundary raycast (recursively) to determine left-edge of illusion zone to render.
# Store the determined offsets in nbt storage.
# No inputs
# Run as active source trigger entity at current raycast position.

execute positioned ~-0.5 ~ ~0.5 summon minecraft:marker run function portal:portal/iz/get_offset
execute store result storage input row int 1 run scoreboard players get #rc_z v
execute store result storage input col int 1 run scoreboard players get #rc_x v
execute if score #rc_z v matches 0.. run function portal:portal/iz/store_coords with storage \
    minecraft:input
scoreboard players remove #rc_depth v 1

# handle boundaries & recurse
execute unless score #rc_z v matches -15..15 run scoreboard players set #rc_depth v 0
execute if score #rc_depth v matches 1.. if score #rc_x v matches ..-16 \
    positioned ~1 ~ ~ rotated 0 ~ run function portal:portal/iz/south/raycast_l
execute if score #rc_depth v matches 1.. if score #rc_x v matches 16.. \
    positioned ~-1 ~ ~ rotated 0 ~ run function portal:portal/iz/south/raycast_l
execute if score #rc_depth v matches 1.. positioned ^ ^ ^1 run function \
    portal:portal/iz/south/raycast_l
# Determine the boundaries of the illusion zone for north facing renders and copy the required
# blocks to player-space.
# $say portal:portal/iz/north/source inputs: $(x_width)
# Run as active source trigger entity at position.

# Run raycast on left and right boundaries of illusion zone to find boundaries
data modify storage minecraft:input side set value "l"
scoreboard players set #rc_depth v 40
# TODO - account for differing thickness of source trigger (add z width to 1.5)
$execute positioned ~1.5 ~ ~1.5 positioned ~$(x_width) ~ ~ facing entity @p feet positioned as @p \
    rotated ~180 0 run function portal:portal/iz/north/raycast_l
data modify storage minecraft:input side set value "r"
scoreboard players set #rc_depth v 40
execute positioned ~-0.5 ~ ~1.5 facing entity @p feet positioned as @p rotated ~180 0 run \
    function portal:portal/iz/north/raycast_r

# Using the collected data, render the illusion zone
function portal:portal/iz/north/render_iz with storage minecraft:portal iz
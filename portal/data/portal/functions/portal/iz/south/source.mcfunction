# Determine the boundaries of the illusion zone for south facing renders and copy the required
# blocks to player-space.
# $say portal:portal/iz/south/source inputs: $(x_width)
# Run as active source trigger entity at position.

# Run raycast on left and right boundaries of illusion zone to find boundaries
data modify storage minecraft:input side set value "l"
scoreboard players set #rc_depth v 40
$execute positioned ~1.5 ~ ~-0.5 positioned ~$(x_width) ~ ~ facing entity @p feet positioned as \
    @p rotated ~180 0 run function portal:portal/iz/south/raycast_l
data modify storage minecraft:input side set value "r"
scoreboard players set #rc_depth v 40
execute positioned ~-0.5 ~ ~-0.5 facing entity @p feet positioned as @p rotated ~180 0 run \
    function portal:portal/iz/south/raycast_r

# Using the collected data, render the illusion zone
function portal:portal/iz/south/render_iz with storage minecraft:portal iz
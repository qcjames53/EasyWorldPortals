# Determine the boundaries of the illusion zone for west facing renders and copy the required
# blocks to player-space.
# $say portal:portal/iz/west/source inputs: $(z_width)
# Run as active source trigger entity at position.

# Run raycast on left and right boundaries of illusion zone to find boundaries
data modify storage minecraft:input side set value "r"
scoreboard players set #rc_depth v 80
$execute positioned ~1.5 ~ ~-0.5 positioned ~$(x_width) ~ ~ facing entity @p feet \
    positioned as @p rotated ~180 0 run function portal:portal/iz/west/raycast_r
data modify storage minecraft:input side set value "l"
scoreboard players set #rc_depth v 80
$execute positioned ~1.5 ~ ~1.5 positioned ~$(x_width) ~ ~ positioned ~ ~ ~$(z_width) \
    facing entity @p feet positioned as @p rotated ~180 0 run \
    function portal:portal/iz/west/raycast_l

# Using the collected data, render the illusion zone
function portal:portal/iz/west/render_iz with storage minecraft:portal iz
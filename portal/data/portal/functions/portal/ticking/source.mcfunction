# Run raycast on left and right boundaries of illusion zone to find boundaries
data modify storage minecraft:portal iz set value {}

data modify storage minecraft:input side set value "l"
scoreboard players set #rc_depth v 30
$execute positioned ~1.5 ~ ~-0.5 positioned ~$(x_width) ~ ~ facing entity @p feet positioned as @p rotated ~180 0 run \
    function portal:portal/ticking/raycast_l

data modify storage minecraft:input side set value "r"
scoreboard players set #rc_depth v 30
execute positioned ~-0.5 ~ ~-0.5 facing entity @p feet positioned as @p rotated ~180 0 run \
    function portal:portal/ticking/raycast_r

# Using the collected data, render the illusion zone
# The height is a clone from -29 + 1(floor) + y_height + 1(y_height offset) = y_height - 27
$scoreboard players set #height v $(y_width)
scoreboard players remove #height v 27
execute store result storage minecraft:portal iz.height int 1 run scoreboard players get #height v
function portal:portal/ticking/render_iz with storage minecraft:portal iz